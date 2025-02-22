# Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
from os import environ

from algoliasearch.http.hosts import Host, HostsCollection
from algoliasearch.search.client import SearchClient
from algoliasearch.search.config import SearchConfig


class TestSearchClient:
    async def test_benchmark_0(self):
        """
        benchmark the search method
        """

        _config = SearchConfig("test-app-id", "test-api-key")
        _config.hosts = HostsCollection(
            [
                Host(
                    url="localhost"
                    if environ.get("CI") == "true"
                    else "host.docker.internal",
                    scheme="http",
                    port=6682,
                )
            ]
        )
        _client = SearchClient.create_with_config(config=_config)
        for _ in range(0, 2000):
            _req = await _client.search(
                search_method_params={
                    "requests": [
                        {
                            "indexName": "cts_e2e_benchmark_search_python",
                            "query": "iphone 15 pro max 512gb",
                            "hitsPerPage": 50,
                        },
                    ],
                },
            )
