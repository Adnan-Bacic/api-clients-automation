// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
import type { EchoResponse } from '@algolia/client-common';
import { insightsClient } from '@algolia/client-insights';
import { echoRequester } from '@algolia/requester-node-http';

const appId = process.env.ALGOLIA_APPLICATION_ID || 'test_app_id';
const apiKey = process.env.ALGOLIA_SEARCH_KEY || 'test_api_key';

const client = insightsClient(appId, apiKey, 'us', { requester: echoRequester() });

describe('customDelete', () => {
  test('allow del method for a custom path with minimal parameters', async () => {
    const req = (await client.customDelete({ path: 'test/minimal' })) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/minimal');
    expect(req.method).toEqual('DELETE');
    expect(req.data).toEqual(undefined);
    expect(req.searchParams).toStrictEqual(undefined);
  });

  test('allow del method for a custom path with all parameters', async () => {
    const req = (await client.customDelete({
      path: 'test/all',
      parameters: { query: 'parameters' },
    })) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/all');
    expect(req.method).toEqual('DELETE');
    expect(req.data).toEqual(undefined);
    expect(req.searchParams).toStrictEqual({ query: 'parameters' });
  });
});

describe('customGet', () => {
  test('allow get method for a custom path with minimal parameters', async () => {
    const req = (await client.customGet({ path: 'test/minimal' })) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/minimal');
    expect(req.method).toEqual('GET');
    expect(req.data).toEqual(undefined);
    expect(req.searchParams).toStrictEqual(undefined);
  });

  test('allow get method for a custom path with all parameters', async () => {
    const req = (await client.customGet({
      path: 'test/all',
      parameters: { query: 'parameters with space' },
    })) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/all');
    expect(req.method).toEqual('GET');
    expect(req.data).toEqual(undefined);
    expect(req.searchParams).toStrictEqual({ query: 'parameters%20with%20space' });
  });

  test('requestOptions should be escaped too', async () => {
    const req = (await client.customGet(
      { path: 'test/all', parameters: { query: 'to be overriden' } },
      {
        queryParameters: { query: 'parameters with space', 'and an array': ['array', 'with spaces'] },
        headers: { 'x-header-1': 'spaces are left alone' },
      },
    )) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/all');
    expect(req.method).toEqual('GET');
    expect(req.data).toEqual(undefined);
    expect(req.searchParams).toStrictEqual({
      query: 'parameters%20with%20space',
      'and%20an%20array': 'array%2Cwith%20spaces',
    });
    expect(req.headers).toEqual(expect.objectContaining({ 'x-header-1': 'spaces are left alone' }));
  });
});

describe('customPost', () => {
  test('allow post method for a custom path with minimal parameters', async () => {
    const req = (await client.customPost({ path: 'test/minimal' })) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/minimal');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({});
    expect(req.searchParams).toStrictEqual(undefined);
  });

  test('allow post method for a custom path with all parameters', async () => {
    const req = (await client.customPost({
      path: 'test/all',
      parameters: { query: 'parameters' },
      body: { body: 'parameters' },
    })) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/all');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({ body: 'parameters' });
    expect(req.searchParams).toStrictEqual({ query: 'parameters' });
  });

  test('requestOptions can override default query parameters', async () => {
    const req = (await client.customPost(
      { path: 'test/requestOptions', parameters: { query: 'parameters' }, body: { facet: 'filters' } },
      {
        queryParameters: { query: 'myQueryParameter' },
      },
    )) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/requestOptions');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({ facet: 'filters' });
    expect(req.searchParams).toStrictEqual({ query: 'myQueryParameter' });
  });

  test('requestOptions merges query parameters with default ones', async () => {
    const req = (await client.customPost(
      { path: 'test/requestOptions', parameters: { query: 'parameters' }, body: { facet: 'filters' } },
      {
        queryParameters: { query2: 'myQueryParameter' },
      },
    )) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/requestOptions');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({ facet: 'filters' });
    expect(req.searchParams).toStrictEqual({ query: 'parameters', query2: 'myQueryParameter' });
  });

  test('requestOptions can override default headers', async () => {
    const req = (await client.customPost(
      { path: 'test/requestOptions', parameters: { query: 'parameters' }, body: { facet: 'filters' } },
      {
        headers: { 'x-algolia-api-key': 'myApiKey' },
      },
    )) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/requestOptions');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({ facet: 'filters' });
    expect(req.searchParams).toStrictEqual({ query: 'parameters' });
    expect(req.headers).toEqual(expect.objectContaining({ 'x-algolia-api-key': 'myApiKey' }));
  });

  test('requestOptions merges headers with default ones', async () => {
    const req = (await client.customPost(
      { path: 'test/requestOptions', parameters: { query: 'parameters' }, body: { facet: 'filters' } },
      {
        headers: { 'x-algolia-api-key': 'myApiKey' },
      },
    )) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/requestOptions');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({ facet: 'filters' });
    expect(req.searchParams).toStrictEqual({ query: 'parameters' });
    expect(req.headers).toEqual(expect.objectContaining({ 'x-algolia-api-key': 'myApiKey' }));
  });

  test('requestOptions queryParameters accepts booleans', async () => {
    const req = (await client.customPost(
      { path: 'test/requestOptions', parameters: { query: 'parameters' }, body: { facet: 'filters' } },
      {
        queryParameters: { isItWorking: true },
      },
    )) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/requestOptions');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({ facet: 'filters' });
    expect(req.searchParams).toStrictEqual({ query: 'parameters', isItWorking: 'true' });
  });

  test('requestOptions queryParameters accepts integers', async () => {
    const req = (await client.customPost(
      { path: 'test/requestOptions', parameters: { query: 'parameters' }, body: { facet: 'filters' } },
      {
        queryParameters: { myParam: 2 },
      },
    )) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/requestOptions');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({ facet: 'filters' });
    expect(req.searchParams).toStrictEqual({ query: 'parameters', myParam: '2' });
  });

  test('requestOptions queryParameters accepts list of string', async () => {
    const req = (await client.customPost(
      { path: 'test/requestOptions', parameters: { query: 'parameters' }, body: { facet: 'filters' } },
      {
        queryParameters: { myParam: ['b and c', 'd'] },
      },
    )) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/requestOptions');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({ facet: 'filters' });
    expect(req.searchParams).toStrictEqual({ query: 'parameters', myParam: 'b%20and%20c%2Cd' });
  });

  test('requestOptions queryParameters accepts list of booleans', async () => {
    const req = (await client.customPost(
      { path: 'test/requestOptions', parameters: { query: 'parameters' }, body: { facet: 'filters' } },
      {
        queryParameters: { myParam: [true, true, false] },
      },
    )) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/requestOptions');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({ facet: 'filters' });
    expect(req.searchParams).toStrictEqual({ query: 'parameters', myParam: 'true%2Ctrue%2Cfalse' });
  });

  test('requestOptions queryParameters accepts list of integers', async () => {
    const req = (await client.customPost(
      { path: 'test/requestOptions', parameters: { query: 'parameters' }, body: { facet: 'filters' } },
      {
        queryParameters: { myParam: [1, 2] },
      },
    )) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/requestOptions');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({ facet: 'filters' });
    expect(req.searchParams).toStrictEqual({ query: 'parameters', myParam: '1%2C2' });
  });
});

describe('customPut', () => {
  test('allow put method for a custom path with minimal parameters', async () => {
    const req = (await client.customPut({ path: 'test/minimal' })) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/minimal');
    expect(req.method).toEqual('PUT');
    expect(req.data).toEqual({});
    expect(req.searchParams).toStrictEqual(undefined);
  });

  test('allow put method for a custom path with all parameters', async () => {
    const req = (await client.customPut({
      path: 'test/all',
      parameters: { query: 'parameters' },
      body: { body: 'parameters' },
    })) as unknown as EchoResponse;

    expect(req.path).toEqual('/test/all');
    expect(req.method).toEqual('PUT');
    expect(req.data).toEqual({ body: 'parameters' });
    expect(req.searchParams).toStrictEqual({ query: 'parameters' });
  });
});

describe('deleteUserToken', () => {
  test('deleteUserToken', async () => {
    const req = (await client.deleteUserToken({ userToken: 'test-user-1' })) as unknown as EchoResponse;

    expect(req.path).toEqual('/1/usertokens/test-user-1');
    expect(req.method).toEqual('DELETE');
    expect(req.data).toEqual(undefined);
    expect(req.searchParams).toStrictEqual(undefined);
  });
});

describe('pushEvents', () => {
  test('pushEvents', async () => {
    const req = (await client.pushEvents({
      events: [
        {
          eventType: 'click',
          eventName: 'Product Clicked',
          index: 'products',
          userToken: 'user-123456',
          authenticatedUserToken: 'user-123456',
          timestamp: 1641290601962,
          objectIDs: ['9780545139700', '9780439784542'],
          queryID: '43b15df305339e827f0ac0bdc5ebcaa7',
          positions: [7, 6],
        },
      ],
    })) as unknown as EchoResponse;

    expect(req.path).toEqual('/1/events');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({
      events: [
        {
          eventType: 'click',
          eventName: 'Product Clicked',
          index: 'products',
          userToken: 'user-123456',
          authenticatedUserToken: 'user-123456',
          timestamp: 1641290601962,
          objectIDs: ['9780545139700', '9780439784542'],
          queryID: '43b15df305339e827f0ac0bdc5ebcaa7',
          positions: [7, 6],
        },
      ],
    });
    expect(req.searchParams).toStrictEqual(undefined);
  });

  test('Many events type', async () => {
    const req = (await client.pushEvents({
      events: [
        {
          eventType: 'conversion',
          eventName: 'Product Purchased',
          index: 'products',
          userToken: 'user-123456',
          authenticatedUserToken: 'user-123456',
          timestamp: 1724716800000,
          objectIDs: ['9780545139700', '9780439784542'],
          queryID: '43b15df305339e827f0ac0bdc5ebcaa7',
        },
        {
          eventType: 'view',
          eventName: 'Product Detail Page Viewed',
          index: 'products',
          userToken: 'user-123456',
          authenticatedUserToken: 'user-123456',
          timestamp: 1724716800000,
          objectIDs: ['9780545139700', '9780439784542'],
        },
      ],
    })) as unknown as EchoResponse;

    expect(req.path).toEqual('/1/events');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({
      events: [
        {
          eventType: 'conversion',
          eventName: 'Product Purchased',
          index: 'products',
          userToken: 'user-123456',
          authenticatedUserToken: 'user-123456',
          timestamp: 1724716800000,
          objectIDs: ['9780545139700', '9780439784542'],
          queryID: '43b15df305339e827f0ac0bdc5ebcaa7',
        },
        {
          eventType: 'view',
          eventName: 'Product Detail Page Viewed',
          index: 'products',
          userToken: 'user-123456',
          authenticatedUserToken: 'user-123456',
          timestamp: 1724716800000,
          objectIDs: ['9780545139700', '9780439784542'],
        },
      ],
    });
    expect(req.searchParams).toStrictEqual(undefined);
  });

  test('ConvertedObjectIDsAfterSearch', async () => {
    const req = (await client.pushEvents({
      events: [
        {
          eventType: 'conversion',
          eventName: 'Product Purchased',
          index: 'products',
          userToken: 'user-123456',
          authenticatedUserToken: 'user-123456',
          timestamp: 1641290601962,
          objectIDs: ['9780545139700', '9780439784542'],
          queryID: '43b15df305339e827f0ac0bdc5ebcaa7',
        },
      ],
    })) as unknown as EchoResponse;

    expect(req.path).toEqual('/1/events');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({
      events: [
        {
          eventType: 'conversion',
          eventName: 'Product Purchased',
          index: 'products',
          userToken: 'user-123456',
          authenticatedUserToken: 'user-123456',
          timestamp: 1641290601962,
          objectIDs: ['9780545139700', '9780439784542'],
          queryID: '43b15df305339e827f0ac0bdc5ebcaa7',
        },
      ],
    });
    expect(req.searchParams).toStrictEqual(undefined);
  });

  test('ViewedObjectIDs', async () => {
    const req = (await client.pushEvents({
      events: [
        {
          eventType: 'view',
          eventName: 'Product Detail Page Viewed',
          index: 'products',
          userToken: 'user-123456',
          authenticatedUserToken: 'user-123456',
          timestamp: 1641290601962,
          objectIDs: ['9780545139700', '9780439784542'],
        },
      ],
    })) as unknown as EchoResponse;

    expect(req.path).toEqual('/1/events');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({
      events: [
        {
          eventType: 'view',
          eventName: 'Product Detail Page Viewed',
          index: 'products',
          userToken: 'user-123456',
          authenticatedUserToken: 'user-123456',
          timestamp: 1641290601962,
          objectIDs: ['9780545139700', '9780439784542'],
        },
      ],
    });
    expect(req.searchParams).toStrictEqual(undefined);
  });

  test('AddedToCartObjectIDs', async () => {
    const req = (await client.pushEvents({
      events: [
        {
          eventType: 'conversion',
          eventSubtype: 'addToCart',
          eventName: 'Product Added To Cart',
          index: 'products',
          queryID: '43b15df305339e827f0ac0bdc5ebcaa7',
          userToken: 'user-123456',
          authenticatedUserToken: 'user-123456',
          timestamp: 1641290601962,
          objectIDs: ['9780545139700', '9780439784542'],
          objectData: [
            { price: 19.99, quantity: 10, discount: 2.5 },
            { price: '8$', quantity: 7, discount: '30%' },
          ],
          currency: 'USD',
        },
      ],
    })) as unknown as EchoResponse;

    expect(req.path).toEqual('/1/events');
    expect(req.method).toEqual('POST');
    expect(req.data).toEqual({
      events: [
        {
          eventType: 'conversion',
          eventSubtype: 'addToCart',
          eventName: 'Product Added To Cart',
          index: 'products',
          queryID: '43b15df305339e827f0ac0bdc5ebcaa7',
          userToken: 'user-123456',
          authenticatedUserToken: 'user-123456',
          timestamp: 1641290601962,
          objectIDs: ['9780545139700', '9780439784542'],
          objectData: [
            { price: 19.99, quantity: 10, discount: 2.5 },
            { price: '8$', quantity: 7, discount: '30%' },
          ],
          currency: 'USD',
        },
      ],
    });
    expect(req.searchParams).toStrictEqual(undefined);
  });
});
