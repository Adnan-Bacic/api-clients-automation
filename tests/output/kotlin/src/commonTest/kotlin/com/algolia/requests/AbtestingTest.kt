// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package com.algolia.requests

import com.algolia.client.api.AbtestingClient
import com.algolia.client.configuration.*
import com.algolia.client.model.abtesting.*
import com.algolia.client.transport.*
import com.algolia.utils.*
import io.ktor.http.*
import kotlinx.coroutines.test.*
import kotlinx.serialization.json.*
import kotlin.test.*

class AbtestingTest {

  val client = AbtestingClient(
    appId = "appId",
    apiKey = "apiKey",
    region = "us",
  )

  // addABTests

  @Test
  fun `addABTests with minimal parameters`() = runTest {
    client.runTest(
      call = {
        addABTests(
          addABTestsRequest = AddABTestsRequest(
            endAt = "2022-12-31T00:00:00.000Z",
            name = "myABTest",
            variants = listOf(
              AbTestsVariant(
                index = "AB_TEST_1",
                trafficPercentage = 30,
              ),
              AbTestsVariant(
                index = "AB_TEST_2",
                trafficPercentage = 50,
              ),
            ),
          ),
        )
      },
      intercept = {
        assertEquals("/2/abtests".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertJsonBody("""{"endAt":"2022-12-31T00:00:00.000Z","name":"myABTest","variants":[{"index":"AB_TEST_1","trafficPercentage":30},{"index":"AB_TEST_2","trafficPercentage":50}]}""", it.body)
      },
    )
  }

  // customDelete

  @Test
  fun `allow del method for a custom path with minimal parameters`() = runTest {
    client.runTest(
      call = {
        customDelete(
          path = "test/minimal",
        )
      },
      intercept = {
        assertEquals("/test/minimal".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("DELETE"), it.method)
        assertNoBody(it.body)
      },
    )
  }

  @Test
  fun `allow del method for a custom path with all parameters1`() = runTest {
    client.runTest(
      call = {
        customDelete(
          path = "test/all",
          parameters = mapOf("query" to "parameters"),
        )
      },
      intercept = {
        assertEquals("/test/all".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("DELETE"), it.method)
        assertQueryParams("""{"query":"parameters"}""", it.url.encodedParameters)
        assertNoBody(it.body)
      },
    )
  }

  // customGet

  @Test
  fun `allow get method for a custom path with minimal parameters`() = runTest {
    client.runTest(
      call = {
        customGet(
          path = "test/minimal",
        )
      },
      intercept = {
        assertEquals("/test/minimal".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("GET"), it.method)
        assertNoBody(it.body)
      },
    )
  }

  @Test
  fun `allow get method for a custom path with all parameters1`() = runTest {
    client.runTest(
      call = {
        customGet(
          path = "test/all",
          parameters = mapOf("query" to "parameters with space"),
        )
      },
      intercept = {
        assertEquals("/test/all".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("GET"), it.method)
        assertQueryParams("""{"query":"parameters%20with%20space"}""", it.url.encodedParameters)
        assertNoBody(it.body)
      },
    )
  }

  @Test
  fun `requestOptions should be escaped too2`() = runTest {
    client.runTest(
      call = {
        customGet(
          path = "test/all",
          parameters = mapOf("query" to "to be overriden"),
          requestOptions = RequestOptions(
            urlParameters = buildMap {
              put("query", "parameters with space")
              put("and an array", listOf("array", "with spaces"))
            },
            headers = buildMap {
              put("x-header-1", "spaces are left alone")
            },
          ),
        )
      },
      intercept = {
        assertEquals("/test/all".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("GET"), it.method)
        assertContainsAll("""{"x-header-1":"spaces are left alone"}""", it.headers)
        assertQueryParams("""{"query":"parameters%20with%20space","and%20an%20array":"array%2Cwith%20spaces"}""", it.url.encodedParameters)
        assertNoBody(it.body)
      },
    )
  }

  // customPost

  @Test
  fun `allow post method for a custom path with minimal parameters`() = runTest {
    client.runTest(
      call = {
        customPost(
          path = "test/minimal",
        )
      },
      intercept = {
        assertEquals("/test/minimal".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertJsonBody("""{}""", it.body)
      },
    )
  }

  @Test
  fun `allow post method for a custom path with all parameters1`() = runTest {
    client.runTest(
      call = {
        customPost(
          path = "test/all",
          parameters = mapOf("query" to "parameters"),
          body = buildJsonObject {
            put(
              "body",
              JsonPrimitive("parameters"),
            )
          },
        )
      },
      intercept = {
        assertEquals("/test/all".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertQueryParams("""{"query":"parameters"}""", it.url.encodedParameters)
        assertJsonBody("""{"body":"parameters"}""", it.body)
      },
    )
  }

  @Test
  fun `requestOptions can override default query parameters2`() = runTest {
    client.runTest(
      call = {
        customPost(
          path = "test/requestOptions",
          parameters = mapOf("query" to "parameters"),
          body = buildJsonObject {
            put(
              "facet",
              JsonPrimitive("filters"),
            )
          },
          requestOptions = RequestOptions(
            urlParameters = buildMap {
              put("query", "myQueryParameter")
            },
          ),
        )
      },
      intercept = {
        assertEquals("/test/requestOptions".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertQueryParams("""{"query":"myQueryParameter"}""", it.url.encodedParameters)
        assertJsonBody("""{"facet":"filters"}""", it.body)
      },
    )
  }

  @Test
  fun `requestOptions merges query parameters with default ones3`() = runTest {
    client.runTest(
      call = {
        customPost(
          path = "test/requestOptions",
          parameters = mapOf("query" to "parameters"),
          body = buildJsonObject {
            put(
              "facet",
              JsonPrimitive("filters"),
            )
          },
          requestOptions = RequestOptions(
            urlParameters = buildMap {
              put("query2", "myQueryParameter")
            },
          ),
        )
      },
      intercept = {
        assertEquals("/test/requestOptions".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertQueryParams("""{"query":"parameters","query2":"myQueryParameter"}""", it.url.encodedParameters)
        assertJsonBody("""{"facet":"filters"}""", it.body)
      },
    )
  }

  @Test
  fun `requestOptions can override default headers4`() = runTest {
    client.runTest(
      call = {
        customPost(
          path = "test/requestOptions",
          parameters = mapOf("query" to "parameters"),
          body = buildJsonObject {
            put(
              "facet",
              JsonPrimitive("filters"),
            )
          },
          requestOptions = RequestOptions(
            headers = buildMap {
              put("x-algolia-api-key", "ALGOLIA_API_KEY")
            },
          ),
        )
      },
      intercept = {
        assertEquals("/test/requestOptions".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertContainsAll("""{"x-algolia-api-key":"ALGOLIA_API_KEY"}""", it.headers)
        assertQueryParams("""{"query":"parameters"}""", it.url.encodedParameters)
        assertJsonBody("""{"facet":"filters"}""", it.body)
      },
    )
  }

  @Test
  fun `requestOptions merges headers with default ones5`() = runTest {
    client.runTest(
      call = {
        customPost(
          path = "test/requestOptions",
          parameters = mapOf("query" to "parameters"),
          body = buildJsonObject {
            put(
              "facet",
              JsonPrimitive("filters"),
            )
          },
          requestOptions = RequestOptions(
            headers = buildMap {
              put("x-algolia-api-key", "ALGOLIA_API_KEY")
            },
          ),
        )
      },
      intercept = {
        assertEquals("/test/requestOptions".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertContainsAll("""{"x-algolia-api-key":"ALGOLIA_API_KEY"}""", it.headers)
        assertQueryParams("""{"query":"parameters"}""", it.url.encodedParameters)
        assertJsonBody("""{"facet":"filters"}""", it.body)
      },
    )
  }

  @Test
  fun `requestOptions queryParameters accepts booleans6`() = runTest {
    client.runTest(
      call = {
        customPost(
          path = "test/requestOptions",
          parameters = mapOf("query" to "parameters"),
          body = buildJsonObject {
            put(
              "facet",
              JsonPrimitive("filters"),
            )
          },
          requestOptions = RequestOptions(
            urlParameters = buildMap {
              put("isItWorking", true)
            },
          ),
        )
      },
      intercept = {
        assertEquals("/test/requestOptions".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertQueryParams("""{"query":"parameters","isItWorking":"true"}""", it.url.encodedParameters)
        assertJsonBody("""{"facet":"filters"}""", it.body)
      },
    )
  }

  @Test
  fun `requestOptions queryParameters accepts integers7`() = runTest {
    client.runTest(
      call = {
        customPost(
          path = "test/requestOptions",
          parameters = mapOf("query" to "parameters"),
          body = buildJsonObject {
            put(
              "facet",
              JsonPrimitive("filters"),
            )
          },
          requestOptions = RequestOptions(
            urlParameters = buildMap {
              put("myParam", 2)
            },
          ),
        )
      },
      intercept = {
        assertEquals("/test/requestOptions".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertQueryParams("""{"query":"parameters","myParam":"2"}""", it.url.encodedParameters)
        assertJsonBody("""{"facet":"filters"}""", it.body)
      },
    )
  }

  @Test
  fun `requestOptions queryParameters accepts list of string8`() = runTest {
    client.runTest(
      call = {
        customPost(
          path = "test/requestOptions",
          parameters = mapOf("query" to "parameters"),
          body = buildJsonObject {
            put(
              "facet",
              JsonPrimitive("filters"),
            )
          },
          requestOptions = RequestOptions(
            urlParameters = buildMap {
              put("myParam", listOf("b and c", "d"))
            },
          ),
        )
      },
      intercept = {
        assertEquals("/test/requestOptions".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertQueryParams("""{"query":"parameters","myParam":"b%20and%20c%2Cd"}""", it.url.encodedParameters)
        assertJsonBody("""{"facet":"filters"}""", it.body)
      },
    )
  }

  @Test
  fun `requestOptions queryParameters accepts list of booleans9`() = runTest {
    client.runTest(
      call = {
        customPost(
          path = "test/requestOptions",
          parameters = mapOf("query" to "parameters"),
          body = buildJsonObject {
            put(
              "facet",
              JsonPrimitive("filters"),
            )
          },
          requestOptions = RequestOptions(
            urlParameters = buildMap {
              put("myParam", listOf(true, true, false))
            },
          ),
        )
      },
      intercept = {
        assertEquals("/test/requestOptions".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertQueryParams("""{"query":"parameters","myParam":"true%2Ctrue%2Cfalse"}""", it.url.encodedParameters)
        assertJsonBody("""{"facet":"filters"}""", it.body)
      },
    )
  }

  @Test
  fun `requestOptions queryParameters accepts list of integers10`() = runTest {
    client.runTest(
      call = {
        customPost(
          path = "test/requestOptions",
          parameters = mapOf("query" to "parameters"),
          body = buildJsonObject {
            put(
              "facet",
              JsonPrimitive("filters"),
            )
          },
          requestOptions = RequestOptions(
            urlParameters = buildMap {
              put("myParam", listOf(1, 2))
            },
          ),
        )
      },
      intercept = {
        assertEquals("/test/requestOptions".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertQueryParams("""{"query":"parameters","myParam":"1%2C2"}""", it.url.encodedParameters)
        assertJsonBody("""{"facet":"filters"}""", it.body)
      },
    )
  }

  // customPut

  @Test
  fun `allow put method for a custom path with minimal parameters`() = runTest {
    client.runTest(
      call = {
        customPut(
          path = "test/minimal",
        )
      },
      intercept = {
        assertEquals("/test/minimal".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("PUT"), it.method)
        assertJsonBody("""{}""", it.body)
      },
    )
  }

  @Test
  fun `allow put method for a custom path with all parameters1`() = runTest {
    client.runTest(
      call = {
        customPut(
          path = "test/all",
          parameters = mapOf("query" to "parameters"),
          body = buildJsonObject {
            put(
              "body",
              JsonPrimitive("parameters"),
            )
          },
        )
      },
      intercept = {
        assertEquals("/test/all".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("PUT"), it.method)
        assertQueryParams("""{"query":"parameters"}""", it.url.encodedParameters)
        assertJsonBody("""{"body":"parameters"}""", it.body)
      },
    )
  }

  // deleteABTest

  @Test
  fun `deleteABTest`() = runTest {
    client.runTest(
      call = {
        deleteABTest(
          id = 42,
        )
      },
      intercept = {
        assertEquals("/2/abtests/42".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("DELETE"), it.method)
        assertNoBody(it.body)
      },
    )
  }

  // estimateABTest

  @Test
  fun `estimate AB Test sample size`() = runTest {
    client.runTest(
      call = {
        estimateABTest(
          estimateABTestRequest = EstimateABTestRequest(
            configuration = EstimateConfiguration(
              emptySearch = EmptySearch(
                exclude = true,
              ),
              minimumDetectableEffect = MinimumDetectableEffect(
                size = 0.03,
                metric = EffectMetric.entries.first { it.value == "conversionRate" },
              ),
            ),
            variants = listOf(
              AbTestsVariant(
                index = "AB_TEST_1",
                trafficPercentage = 50,
              ),
              AbTestsVariant(
                index = "AB_TEST_2",
                trafficPercentage = 50,
              ),
            ),
          ),
        )
      },
      intercept = {
        assertEquals("/2/abtests/estimate".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertJsonBody("""{"configuration":{"emptySearch":{"exclude":true},"minimumDetectableEffect":{"size":0.03,"metric":"conversionRate"}},"variants":[{"index":"AB_TEST_1","trafficPercentage":50},{"index":"AB_TEST_2","trafficPercentage":50}]}""", it.body)
      },
    )
  }

  // getABTest

  @Test
  fun `getABTest`() = runTest {
    client.runTest(
      call = {
        getABTest(
          id = 42,
        )
      },
      intercept = {
        assertEquals("/2/abtests/42".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("GET"), it.method)
        assertNoBody(it.body)
      },
    )
  }

  // listABTests

  @Test
  fun `listABTests with minimal parameters`() = runTest {
    client.runTest(
      call = {
        listABTests()
      },
      intercept = {
        assertEquals("/2/abtests".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("GET"), it.method)
        assertNoBody(it.body)
      },
    )
  }

  @Test
  fun `listABTests with parameters1`() = runTest {
    client.runTest(
      call = {
        listABTests(
          offset = 0,
          limit = 21,
          indexPrefix = "cts_e2e ab",
          indexSuffix = "t",
        )
      },
      intercept = {
        assertEquals("/2/abtests".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("GET"), it.method)
        assertQueryParams("""{"offset":"0","limit":"21","indexPrefix":"cts_e2e%20ab","indexSuffix":"t"}""", it.url.encodedParameters)
        assertNoBody(it.body)
      },
    )
  }

  // scheduleABTest

  @Test
  fun `scheduleABTest with minimal parameters`() = runTest {
    client.runTest(
      call = {
        scheduleABTest(
          scheduleABTestsRequest = ScheduleABTestsRequest(
            endAt = "2022-12-31T00:00:00.000Z",
            scheduledAt = "2022-11-31T00:00:00.000Z",
            name = "myABTest",
            variants = listOf(
              AbTestsVariant(
                index = "AB_TEST_1",
                trafficPercentage = 30,
              ),
              AbTestsVariant(
                index = "AB_TEST_2",
                trafficPercentage = 50,
              ),
            ),
          ),
        )
      },
      intercept = {
        assertEquals("/2/abtests/schedule".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertJsonBody("""{"endAt":"2022-12-31T00:00:00.000Z","scheduledAt":"2022-11-31T00:00:00.000Z","name":"myABTest","variants":[{"index":"AB_TEST_1","trafficPercentage":30},{"index":"AB_TEST_2","trafficPercentage":50}]}""", it.body)
      },
    )
  }

  // stopABTest

  @Test
  fun `stopABTest`() = runTest {
    client.runTest(
      call = {
        stopABTest(
          id = 42,
        )
      },
      intercept = {
        assertEquals("/2/abtests/42/stop".toPathSegments(), it.url.pathSegments)
        assertEquals(HttpMethod.parse("POST"), it.method)
        assertEmptyBody(it.body)
      },
    )
  }
}
