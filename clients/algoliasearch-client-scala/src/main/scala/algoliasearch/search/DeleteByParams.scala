/** Search API The Algolia Search API lets you search, configure, and manage your indices and records. ## Client
  * libraries Use Algolia's API clients and libraries to reliably integrate Algolia's APIs with your apps. The official
  * API clients are covered by Algolia's [Service Level Agreement](https://www.algolia.com/policies/sla/). See:
  * [Algolia's ecosystem](https://www.algolia.com/doc/guides/getting-started/how-algolia-works/in-depth/ecosystem/) ##
  * Base URLs The base URLs for requests to the Search API are: - `https://{APPLICATION_ID}.algolia.net` -
  * `https://{APPLICATION_ID}-dsn.algolia.net`. If your subscription includes a [Distributed Search
  * Network](https://dashboard.algolia.com/infra), this ensures that requests are sent to servers closest to users. Both
  * URLs provide high availability by distributing requests with load balancing. **All requests must use HTTPS.** ##
  * Retry strategy To guarantee high availability, implement a retry strategy for all API requests using the URLs of
  * your servers as fallbacks: - `https://{APPLICATION_ID}-1.algolianet.com` -
  * `https://{APPLICATION_ID}-2.algolianet.com` - `https://{APPLICATION_ID}-3.algolianet.com` These URLs use a different
  * DNS provider than the primary URLs. You should randomize this list to ensure an even load across the three servers.
  * All Algolia API clients implement this retry strategy. ## Authentication To authenticate your API requests, add
  * these headers: - `x-algolia-application-id`. Your Algolia application ID. - `x-algolia-api-key`. An API key with the
  * necessary permissions to make the request. The required access control list (ACL) to make a request is listed in
  * each endpoint's reference. You can find your application ID and API key in the [Algolia
  * dashboard](https://dashboard.algolia.com/account). ## Request format Depending on the endpoint, request bodies are
  * either JSON objects or arrays of JSON objects, ## Parameters Parameters are passed as query parameters for GET and
  * DELETE requests, and in the request body for POST and PUT requests. Query parameters must be
  * [URL-encoded](https://developer.mozilla.org/en-US/docs/Glossary/Percent-encoding). Non-ASCII characters must be
  * UTF-8 encoded. Plus characters (`+`) are interpreted as spaces. Arrays as query parameters must be one of: - A
  * comma-separated string: `attributesToRetrieve=title,description` - A URL-encoded JSON array:
  * `attributesToRetrieve=%5B%22title%22,%22description%22%D` ## Response status and errors The Search API returns JSON
  * responses. Since JSON doesn't guarantee any specific ordering, don't rely on the order of attributes in the API
  * response. Successful responses return a `2xx` status. Client errors return a `4xx` status. Server errors are
  * indicated by a `5xx` status. Error responses have a `message` property with more information. ## Version The current
  * version of the Search API is version 1, as indicated by the `/1/` in each endpoint's URL.
  *
  * The version of the OpenAPI document: 1.0.0
  *
  * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
  * https://openapi-generator.tech Do not edit the class manually.
  */
package algoliasearch.search

/** DeleteByParams
  *
  * @param filters
  *   Filter expression to only include items that match the filter criteria in the response. You can use these filter
  *   expressions: - **Numeric filters.** `<facet> <op> <number>`, where `<op>` is one of `<`, `<=`, `=`, `!=`, `>`,
  *   `>=`. - **Ranges.** `<facet>:<lower> TO <upper>` where `<lower>` and `<upper>` are the lower and upper limits of
  *   the range (inclusive). - **Facet filters.** `<facet>:<value>` where `<facet>` is a facet attribute
  *   (case-sensitive) and `<value>` a facet value. - **Tag filters.** `_tags:<value>` or just `<value>`
  *   (case-sensitive). - **Boolean filters.** `<facet>: true | false`. You can combine filters with `AND`, `OR`, and
  *   `NOT` operators with the following restrictions: - You can only combine filters of the same type with `OR`. **Not
  *   supported:** `facet:value OR num > 3`. - You can't use `NOT` with combinations of filters. **Not supported:**
  *   `NOT(facet:value OR facet:value)` - You can't combine conjunctions (`AND`) with `OR`. **Not supported:**
  *   `facet:value OR (facet:value AND facet:value)` Use quotes around your filters, if the facet attribute name or
  *   facet value has spaces, keywords (`OR`, `AND`, `NOT`), or quotes. If a facet attribute is an array, the filter
  *   matches if it matches at least one element of the array. For more information, see
  *   [Filters](https://www.algolia.com/doc/guides/managing-results/refine-results/filtering/).
  * @param aroundLatLng
  *   Coordinates for the center of a circle, expressed as a comma-separated string of latitude and longitude. Only
  *   records included within a circle around this central location are included in the results. The radius of the
  *   circle is determined by the `aroundRadius` and `minimumAroundRadius` settings. This parameter is ignored if you
  *   also specify `insidePolygon` or `insideBoundingBox`.
  * @param insidePolygon
  *   Coordinates of a polygon in which to search. Polygons are defined by 3 to 10,000 points. Each point is represented
  *   by its latitude and longitude. Provide multiple polygons as nested arrays. For more information, see [filtering
  *   inside
  *   polygons](https://www.algolia.com/doc/guides/managing-results/refine-results/geolocation/#filtering-inside-rectangular-or-polygonal-areas).
  *   This parameter is ignored if you also specify `insideBoundingBox`.
  */
case class DeleteByParams(
    facetFilters: Option[FacetFilters] = scala.None,
    filters: Option[String] = scala.None,
    numericFilters: Option[NumericFilters] = scala.None,
    tagFilters: Option[TagFilters] = scala.None,
    aroundLatLng: Option[String] = scala.None,
    aroundRadius: Option[AroundRadius] = scala.None,
    insideBoundingBox: Option[InsideBoundingBox] = scala.None,
    insidePolygon: Option[Seq[Seq[Double]]] = scala.None
)
