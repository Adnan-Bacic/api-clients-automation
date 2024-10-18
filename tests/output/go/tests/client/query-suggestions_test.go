// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package client

import (
	"encoding/json"
	"regexp"
	"testing"

	"github.com/stretchr/testify/require"

	"gotests/tests"

	"github.com/algolia/algoliasearch-client-go/v4/algolia/call"
	suggestions "github.com/algolia/algoliasearch-client-go/v4/algolia/query-suggestions"
	"github.com/algolia/algoliasearch-client-go/v4/algolia/transport"
)

func createSuggestionsClient(t *testing.T) (*suggestions.APIClient, *tests.EchoRequester) {
	echo := &tests.EchoRequester{}
	cfg := suggestions.QuerySuggestionsConfiguration{
		Configuration: transport.Configuration{
			AppID:     "appID",
			ApiKey:    "apiKey",
			Requester: echo,
		},
		Region: suggestions.US,
	}
	client, err := suggestions.NewClientWithConfig(cfg)
	require.NoError(t, err)

	return client, echo
}

// calls api with correct user agent
func TestSuggestionscommonApi0(t *testing.T) {
	var err error
	var res any
	_ = res
	client, echo := createSuggestionsClient(t)
	_ = echo
	res, err = client.CustomPost(client.NewApiCustomPostRequest(
		"1/test",
	))
	require.NoError(t, err)
	require.Regexp(t, regexp.MustCompile(`^Algolia for Go \(\d+\.\d+\.\d+(-?.*)?\)(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*(; QuerySuggestions (\(\d+\.\d+\.\d+(-?.*)?\)))(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*$`), echo.Header.Get("User-Agent"))
}

// the user agent contains the latest version
func TestSuggestionscommonApi1(t *testing.T) {
	var err error
	var res any
	_ = res
	client, echo := createSuggestionsClient(t)
	_ = echo
	res, err = client.CustomPost(client.NewApiCustomPostRequest(
		"1/test",
	))
	require.NoError(t, err)
	require.Regexp(t, regexp.MustCompile(`^Algolia for Go \(4.5.2\).*`), echo.Header.Get("User-Agent"))
}

// calls api with default read timeouts
func TestSuggestionscommonApi2(t *testing.T) {
	var err error
	var res any
	_ = res
	client, echo := createSuggestionsClient(t)
	_ = echo
	res, err = client.CustomGet(client.NewApiCustomGetRequest(
		"1/test",
	))
	require.NoError(t, err)
	require.Equal(t, int64(2000), echo.ConnectTimeout.Milliseconds())
	require.Equal(t, int64(5000), echo.Timeout.Milliseconds())
}

// calls api with default write timeouts
func TestSuggestionscommonApi3(t *testing.T) {
	var err error
	var res any
	_ = res
	client, echo := createSuggestionsClient(t)
	_ = echo
	res, err = client.CustomPost(client.NewApiCustomPostRequest(
		"1/test",
	))
	require.NoError(t, err)
	require.Equal(t, int64(2000), echo.ConnectTimeout.Milliseconds())
	require.Equal(t, int64(30000), echo.Timeout.Milliseconds())
}

// throws when region is not given
func TestSuggestionsparameters0(t *testing.T) {
	var err error
	var res any
	_ = res
	echo := &tests.EchoRequester{}
	var client *suggestions.APIClient
	var cfg suggestions.QuerySuggestionsConfiguration
	_ = client
	_ = echo
	cfg = suggestions.QuerySuggestionsConfiguration{
		Configuration: transport.Configuration{
			AppID:     "my-app-id",
			ApiKey:    "my-api-key",
			Requester: echo,
		},
		Region: suggestions.Region(""),
	}
	client, err = suggestions.NewClientWithConfig(cfg)
	require.EqualError(t, err, "`region` is required and must be one of the following: eu, us")
}

// throws when incorrect region is given
func TestSuggestionsparameters1(t *testing.T) {
	var err error
	var res any
	_ = res
	echo := &tests.EchoRequester{}
	var client *suggestions.APIClient
	var cfg suggestions.QuerySuggestionsConfiguration
	_ = client
	_ = echo
	cfg = suggestions.QuerySuggestionsConfiguration{
		Configuration: transport.Configuration{
			AppID:     "my-app-id",
			ApiKey:    "my-api-key",
			Requester: echo,
		},
		Region: suggestions.Region("not_a_region"),
	}
	client, err = suggestions.NewClientWithConfig(cfg)
	require.EqualError(t, err, "`region` is required and must be one of the following: eu, us")
}

// does not throw when region is given
func TestSuggestionsparameters2(t *testing.T) {
	var err error
	var res any
	_ = res
	echo := &tests.EchoRequester{}
	var client *suggestions.APIClient
	var cfg suggestions.QuerySuggestionsConfiguration
	_ = client
	_ = echo
	cfg = suggestions.QuerySuggestionsConfiguration{
		Configuration: transport.Configuration{
			AppID:     "my-app-id",
			ApiKey:    "my-api-key",
			Requester: echo,
		},
		Region: suggestions.Region("us"),
	}
	client, err = suggestions.NewClientWithConfig(cfg)
	require.NoError(t, err)
}

// switch API key
func TestSuggestionssetClientApiKey0(t *testing.T) {
	var err error
	var res any
	_ = res
	echo := &tests.EchoRequester{}
	var client *suggestions.APIClient
	var cfg suggestions.QuerySuggestionsConfiguration
	_ = client
	_ = echo
	cfg = suggestions.QuerySuggestionsConfiguration{
		Configuration: transport.Configuration{
			AppID:  "test-app-id",
			ApiKey: "test-api-key",
			Hosts:  []transport.StatefulHost{transport.NewStatefulHost("http", tests.GetLocalhost()+":6683", call.IsReadWrite)},
		},
		Region: suggestions.Region("us"),
	}
	client, err = suggestions.NewClientWithConfig(cfg)
	require.NoError(t, err)
	{
		res, err = client.CustomGet(client.NewApiCustomGetRequest(
			"check-api-key/1",
		))
		require.NoError(t, err)
		rawBody, err := json.Marshal(res)
		require.NoError(t, err)
		require.JSONEq(t, `{"headerAPIKeyValue":"test-api-key"}`, string(rawBody))
	}
	{
		err = client.SetClientApiKey(
			"updated-api-key",
		)
		require.NoError(t, err)
	}
	{
		res, err = client.CustomGet(client.NewApiCustomGetRequest(
			"check-api-key/2",
		))
		require.NoError(t, err)
		rawBody, err := json.Marshal(res)
		require.NoError(t, err)
		require.JSONEq(t, `{"headerAPIKeyValue":"updated-api-key"}`, string(rawBody))
	}
}
