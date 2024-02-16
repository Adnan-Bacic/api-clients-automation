from re import compile

from algoliasearch.analytics.client import AnalyticsClient
from algoliasearch.analytics.config import AnalyticsConfig
from algoliasearch.http.transporter import EchoTransporter


class TestAnalyticsClient:
    _client: AnalyticsClient

    def create_client(self) -> AnalyticsClient:
        _config = AnalyticsConfig("appId", "apiKey", "us")
        self._client = AnalyticsClient.create_with_config(
            config=_config, transporter=EchoTransporter(_config)
        )

    async def test_common_api_0(self):
        """
        calls api with correct user agent
        """
        self.create_client()

        _req = await self._client.custom_post_with_http_info(
            path="/test",
        )
        regex_user_agent = compile(
            "^Algolia for Python \\(\\d+\\.\\d+\\.\\d+(-?.*)?\\)(; [a-zA-Z. ]+ (\\(\\d+((\\.\\d+)?\\.\\d+)?(-?.*)?\\))?)*(; Analytics (\\(\\d+\\.\\d+\\.\\d+(-?.*)?\\)))(; [a-zA-Z. ]+ (\\(\\d+((\\.\\d+)?\\.\\d+)?(-?.*)?\\))?)*$"
        )
        assert regex_user_agent.match(_req.headers.get("user-agent")) is not None

    async def test_common_api_1(self):
        """
        calls api with default read timeouts
        """
        self.create_client()

        _req = await self._client.custom_get_with_http_info(
            path="/test",
        )
        assert _req.timeouts.get("connect") == 2000
        assert _req.timeouts.get("response") == 5000

    async def test_common_api_2(self):
        """
        calls api with default write timeouts
        """
        self.create_client()

        _req = await self._client.custom_post_with_http_info(
            path="/test",
        )
        assert _req.timeouts.get("connect") == 2000
        assert _req.timeouts.get("response") == 30000

    async def test_parameters_0(self):
        """
        fallbacks to the alias when region is not given
        """

        _config = AnalyticsConfig("my-app-id", "my-api-key")
        self._client = AnalyticsClient.create_with_config(
            config=_config, transporter=EchoTransporter(_config)
        )
        _req = await self._client.get_average_click_position_with_http_info(
            index="my-index",
        )
        assert _req.host == "analytics.algolia.com"

    async def test_parameters_1(self):
        """
        uses the correct region
        """

        _config = AnalyticsConfig("my-app-id", "my-api-key", "de")
        self._client = AnalyticsClient.create_with_config(
            config=_config, transporter=EchoTransporter(_config)
        )
        _req = await self._client.custom_post_with_http_info(
            path="/test",
        )
        assert _req.host == "analytics.de.algolia.com"

    async def test_parameters_2(self):
        """
        throws when incorrect region is given
        """

        try:
            _config = AnalyticsConfig("my-app-id", "my-api-key", "not_a_region")
            self._client = AnalyticsClient.create_with_config(
                config=_config, transporter=EchoTransporter(_config)
            )
            assert False
        except (ValueError, Exception) as e:
            assert str(e) == "`region` must be one of the following: de, us"

    async def test_parameters_3(self):
        """
        getAverageClickPosition throws without index
        """
        self.create_client()

        try:
            await self._client.get_click_positions_with_http_info(
                index=None,
            )
            assert False
        except (ValueError, Exception) as e:
            assert (
                str(e)
                == "Parameter `index` is required when calling `get_click_positions`."
            )
