import http from 'http';
import https from 'https';
import nock from 'nock';
import { Readable } from 'stream';
import { afterAll, beforeAll, describe, expect, test, vi } from 'vitest';

import type { EndRequest } from '@algolia/client-common';

import { createHttpRequester } from '../..';
import {
  createTestServer,
  getStringifiedBody,
  headers,
  requestStub,
  testQueryBaseUrl,
  testQueryHeader,
  timeoutRequest,
} from '../../../../tests/utils';

const requester = createHttpRequester();

const httpsBaseRequest = https.request;
const httpBaseRequest = http.request;

describe('api', () => {
  const mockedRequestResponse = {
    destroy: vi.fn(),
    on: vi.fn(),
    once: vi.fn(),
    write: vi.fn(),
    end: vi.fn(),
  };

  beforeAll(() => {
    // @ts-expect-error we don't care about the response for those tests
    https.request = vi.fn(() => mockedRequestResponse);
  });

  afterAll(() => {
    https.request = httpsBaseRequest;
    http.request = httpBaseRequest;
    vi.resetAllMocks();
    vi.clearAllMocks();
  });

  test('allow init without parameters', () => {
    expect(() => createHttpRequester()).not.toThrow();
  });

  test('allow providing custom agent', async () => {
    const agent = new http.Agent();
    // @ts-expect-error we don't care about the response for those tests
    http.request = vi.fn(() => mockedRequestResponse);
    const tmpRequester = createHttpRequester({
      agent,
    });

    await tmpRequester.send({
      ...requestStub,
      url: 'http://algolia-dns.net/foo?x-algolia-header=bar',
    });

    expect(http.request).toHaveBeenCalled();
  });

  test('allow overriding default options', async () => {
    const tmpRequester = createHttpRequester({
      requesterOptions: {
        headers: {
          'my-extra-header': 'algolia',
        },
      },
    });

    await tmpRequester.send(requestStub);

    expect(https.request).toHaveBeenCalledWith(
      expect.objectContaining({
        headers: expect.objectContaining({
          'my-extra-header': 'algolia',
        }),
      }),
      expect.any(Function),
    );
  });
});

describe('status code handling', () => {
  test('sends requests', async () => {
    const body = getStringifiedBody();

    nock(testQueryBaseUrl, { reqheaders: headers }).post('/foo').query(testQueryHeader).reply(200, body);

    const response = await requester.send(requestStub);

    expect(response.content).toEqual(body);
  });

  test('resolves status 200', async () => {
    const body = getStringifiedBody();

    nock(testQueryBaseUrl, { reqheaders: headers }).post('/foo').query(testQueryHeader).reply(200, body);

    const response = await requester.send(requestStub);

    expect(response.status).toBe(200);
    expect(response.content).toBe(body);
    expect(response.isTimedOut).toBe(false);
  });

  test('resolves status 300', async () => {
    const reason = 'Multiple Choices';

    nock(testQueryBaseUrl, { reqheaders: headers }).post('/foo').query(testQueryHeader).reply(300, reason);

    const response = await requester.send(requestStub);

    expect(response.status).toBe(300);
    expect(response.content).toBe(reason);
    expect(response.isTimedOut).toBe(false);
  });

  test('resolves status 400', async () => {
    const body = getStringifiedBody({
      message: 'Invalid Application-Id or API-Key',
    });

    nock(testQueryBaseUrl, { reqheaders: headers }).post('/foo').query(testQueryHeader).reply(400, body);

    const response = await requester.send(requestStub);

    expect(response.status).toBe(400);
    expect(response.content).toBe(body);
    expect(response.isTimedOut).toBe(false);
  });

  test('handles chunked responses inside unicode character boundaries', async () => {
    const data = Buffer.from('äöü');

    // create a test response stream that is chunked inside a unicode character
    function* generate() {
      yield data.subarray(0, 3);
      yield data.subarray(3);
    }

    const testStream = Readable.from(generate());

    nock(testQueryBaseUrl, { reqheaders: headers }).post('/foo').query(testQueryHeader).reply(200, testStream);

    const response = await requester.send(requestStub);

    expect(response.content).toEqual(data.toString());
  });
});

describe('timeout handling', () => {
  let server: http.Server;
  // setup http server to test timeout
  beforeAll(() => {
    server = createTestServer();

    server.listen('1112');
  });

  afterAll(
    () =>
      new Promise<void>((done) => {
        done();
      }),
  );

  test('timeouts with the given 1 seconds connection timeout', async () => {
    const before = Date.now();
    const response = await requester.send({
      ...timeoutRequest,
      connectTimeout: 1000,
      url: 'http://localhost:1112/connection_timeout',
    });

    const now = Date.now();

    expect(response.content).toBe('Connection timeout');
    expect(now - before).toBeGreaterThanOrEqual(999);
    expect(now - before).toBeLessThanOrEqual(1200);
  });

  test('connection timeouts with the given 2 seconds connection timeout', async () => {
    const before = Date.now();
    const response = await requester.send({
      ...timeoutRequest,
      connectTimeout: 2000,
      url: 'http://localhost:1112/connection_timeout',
    });

    const now = Date.now();

    expect(response.content).toBe('Connection timeout');
    expect(now - before).toBeGreaterThanOrEqual(1999);
    expect(now - before).toBeLessThanOrEqual(2200);
  });

  test("socket timeouts if response don't appears before the timeout with 2 seconds timeout", async () => {
    const before = Date.now();

    const response = await requester.send({
      ...timeoutRequest,
      responseTimeout: 2000,
      url: 'http://localhost:1112',
    });

    const now = Date.now();

    expect(response.content).toBe('Socket timeout');
    expect(now - before).toBeGreaterThanOrEqual(1999);
    expect(now - before).toBeLessThanOrEqual(2200);
  });

  test("socket timeouts if response don't appears before the timeout with 3 seconds timeout", async () => {
    const before = Date.now();
    const response = await requester.send({
      ...timeoutRequest,
      responseTimeout: 3000,
      url: 'http://localhost:1112',
    });

    const now = Date.now();

    expect(response.content).toBe('Socket timeout');
    expect(now - before).toBeGreaterThanOrEqual(2999);
    expect(now - before).toBeLessThanOrEqual(3200);
  });

  test('do not timeouts if response appears before the timeout', async () => {
    const before = Date.now();
    const response = await requester.send({
      ...requestStub,
      url: 'http://localhost:1112',
      responseTimeout: 6000,
    });

    const now = Date.now();

    expect(response.isTimedOut).toBe(false);
    expect(response.status).toBe(200);
    expect(response.content).toBe('{"foo": "bar"}');
    expect(now - before).toBeGreaterThanOrEqual(4999);
    expect(now - before).toBeLessThanOrEqual(5200);
  }, 10000); // This is a long-running test, default server timeout is set to 5000ms
});

describe('error handling', (): void => {
  test('resolves dns not found', async () => {
    const request: EndRequest = {
      url: 'https://this-dont-exist.algolia.com',
      method: 'POST',
      headers,
      data: getStringifiedBody(),
      responseTimeout: 2000,
      connectTimeout: 1000,
    };

    const response = await requester.send(request);

    expect(response.status).toBe(0);
    expect(response.content).toContain('');
    expect(response.isTimedOut).toBe(false);
  });

  test('resolves general network errors', async () => {
    nock(testQueryBaseUrl, { reqheaders: headers })
      .post('/foo')
      .query(testQueryHeader)
      .replyWithError('This is a general error');

    const response = await requester.send(requestStub);

    expect(response.status).toBe(0);
    expect(response.content).toBe('This is a general error');
    expect(response.isTimedOut).toBe(false);
  });
});
