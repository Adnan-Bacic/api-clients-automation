// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package algoliasearch.client

import algoliasearch.api.MonitoringClient
import algoliasearch.config.*
import algoliasearch.{EchoInterceptor, assertError}
import algoliasearch.monitoring.*
import algoliasearch.exception.*
import org.json4s.*
import org.json4s.native.JsonParser.*
import org.json4s.native.Serialization
import org.json4s.native.Serialization.write
import org.scalatest.funsuite.AnyFunSuite

import scala.concurrent.duration.Duration
import scala.concurrent.{Await, ExecutionContextExecutor}

class MonitoringTest extends AnyFunSuite {
  implicit val ec: ExecutionContextExecutor = scala.concurrent.ExecutionContext.global
  implicit val formats: Formats = org.json4s.DefaultFormats

  def testClient(appId: String = "appId", apiKey: String = "apiKey"): (MonitoringClient, EchoInterceptor) = {
    val echo = EchoInterceptor()
    (
      MonitoringClient(
        appId = appId,
        apiKey = apiKey,
        clientOptions = ClientOptions
          .builder()
          .withRequesterConfig(requester => requester.withInterceptor(echo))
          .build()
      ),
      echo
    )
  }

  test("calls api with correct user agent") {
    val (client, echo) = testClient()

    Await.ready(
      client.customPost[JObject](
        path = "1/test"
      ),
      Duration.Inf
    )
    val regexp =
      """^Algolia for Scala \(\d+\.\d+\.\d+(-?.*)?\)(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*(; Monitoring (\(\d+\.\d+\.\d+(-?.*)?\)))(; [a-zA-Z. ]+ (\(\d+((\.\d+)?\.\d+)?(-?.*)?\))?)*$""".r
    val header = echo.lastResponse.get.headers("user-agent")
    assert(header.matches(regexp.regex), s"Expected $header to match the following regex: ${regexp.regex}")
  }

  test("the user agent contains the latest version") {
    val (client, echo) = testClient()

    Await.ready(
      client.customPost[JObject](
        path = "1/test"
      ),
      Duration.Inf
    )
    val regexp = """^Algolia for Scala \(2.3.2\).*""".r
    val header = echo.lastResponse.get.headers("user-agent")
    assert(header.matches(regexp.regex), s"Expected $header to match the following regex: ${regexp.regex}")
  }

  test("calls api with default read timeouts") {
    val (client, echo) = testClient()

    Await.ready(
      client.customGet[JObject](
        path = "1/test"
      ),
      Duration.Inf
    )
    assert(echo.lastResponse.get.connectTimeout == 2000)
    assert(echo.lastResponse.get.responseTimeout == 5000)
  }

  test("calls api with default write timeouts") {
    val (client, echo) = testClient()

    Await.ready(
      client.customPost[JObject](
        path = "1/test"
      ),
      Duration.Inf
    )
    assert(echo.lastResponse.get.connectTimeout == 2000)
    assert(echo.lastResponse.get.responseTimeout == 30000)
  }

  test("use the correct host") {

    val (client, echo) = testClient(appId = "my-app-id", apiKey = "my-api-key")

    Await.ready(
      client.customDelete[JObject](
        path = "test"
      ),
      Duration.Inf
    )
    assert(echo.lastResponse.get.host == "status.algolia.com")
  }

  test("switch API key") {

    val client = MonitoringClient(
      appId = "test-app-id",
      apiKey = "test-api-key",
      clientOptions = ClientOptions
        .builder()
        .withHosts(List(Host("localhost", Set(CallType.Read, CallType.Write), "http", Option(6683))))
        .build()
    )

    {
      var res = Await.result(
        client.customGet[JObject](
          path = "check-api-key/1"
        ),
        Duration.Inf
      )
      assert(write(res) == "{\"headerAPIKeyValue\":\"test-api-key\"}")
    }

    {

      client.setClientApiKey(
        apiKey = "updated-api-key"
      )
    }

    {
      var res = Await.result(
        client.customGet[JObject](
          path = "check-api-key/2"
        ),
        Duration.Inf
      )
      assert(write(res) == "{\"headerAPIKeyValue\":\"updated-api-key\"}")
    }
  }
}
