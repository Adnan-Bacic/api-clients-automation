// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
/* eslint-disable @typescript-eslint/no-unused-vars */
import { searchClient } from '@algolia/client-search';
import { describe, test } from 'vitest';

describe('benchmark', () => {
  test('benchmark the search method', async () => {
    const client = searchClient('test-app-id', 'test-api-key', {
      hosts: [{ url: 'localhost', port: 6682, accept: 'readWrite', protocol: 'http' }],
    });

    for (let i = 0; i < 1000; i++) {
      const result = await client.search({
        requests: [
          { indexName: 'cts_e2e_benchmark_search_javascript', query: 'iphone 15 pro max 512gb', hitsPerPage: 50 },
        ],
      });
    }
  }, 15000);
});
