/** Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT. */
package com.algolia.client.model.search

import kotlinx.serialization.*
import kotlinx.serialization.json.*

/**
 * BaseSearchParamsWithoutQuery
 *
 * @param similarQuery Overrides the query parameter and performs a more generic search that can be used to find \"similar\" results.
 * @param filters Filter the query with numeric, facet and/or tag filters.
 * @param facetFilters
 * @param optionalFilters
 * @param numericFilters
 * @param tagFilters
 * @param sumOrFiltersScores Determines how to calculate the total score for filtering.
 * @param facets Retrieve facets and their facet values.
 * @param maxValuesPerFacet Maximum number of facet values to return for each facet during a regular search.
 * @param facetingAfterDistinct Force faceting to be applied after de-duplication (via the Distinct setting).
 * @param sortFacetValuesBy Controls how facet values are fetched.
 * @param page Specify the page to retrieve.
 * @param offset Specify the offset of the first hit to return.
 * @param length Set the number of hits to retrieve (used only with offset).
 * @param aroundLatLng Search for entries around a central geolocation, enabling a geo search within a circular area.
 * @param aroundLatLngViaIP Search for entries around a given location automatically computed from the requester's IP address.
 * @param aroundRadius
 * @param aroundPrecision Precision of geo search (in meters), to add grouping by geo location to the ranking formula.
 * @param minimumAroundRadius Minimum radius (in meters) used for a geo search when aroundRadius is not set.
 * @param insideBoundingBox Search inside a rectangular area (in geo coordinates).
 * @param insidePolygon Search inside a polygon (in geo coordinates).
 * @param naturalLanguages This parameter changes the default values of certain parameters and settings that work best for a natural language query, such as ignorePlurals, removeStopWords, removeWordsIfNoResults, analyticsTags and ruleContexts. These parameters and settings work well together when the query is formatted in natural language instead of keywords, for example when your user performs a voice search.
 * @param ruleContexts Enables contextual rules.
 * @param personalizationImpact Define the impact of the Personalization feature.
 * @param userToken Associates a certain user token with the current search.
 * @param getRankingInfo Retrieve detailed ranking information.
 * @param clickAnalytics Enable the Click Analytics feature.
 * @param analytics Whether the current query will be taken into account in the Analytics.
 * @param analyticsTags List of tags to apply to the query for analytics purposes.
 * @param percentileComputation Whether to include or exclude a query from the processing-time percentile computation.
 * @param enableABTest Whether this search should participate in running AB tests.
 * @param enableReRanking Whether this search should use AI Re-Ranking.
 * @param reRankingApplyFilter
 */
@Serializable
public data class BaseSearchParamsWithoutQuery(

  /** Overrides the query parameter and performs a more generic search that can be used to find \"similar\" results. */
  @SerialName(value = "similarQuery") val similarQuery: String? = null,

  /** Filter the query with numeric, facet and/or tag filters. */
  @SerialName(value = "filters") val filters: String? = null,

  @SerialName(value = "facetFilters") val facetFilters: FacetFilters? = null,

  @SerialName(value = "optionalFilters") val optionalFilters: OptionalFilters? = null,

  @SerialName(value = "numericFilters") val numericFilters: NumericFilters? = null,

  @SerialName(value = "tagFilters") val tagFilters: TagFilters? = null,

  /** Determines how to calculate the total score for filtering. */
  @SerialName(value = "sumOrFiltersScores") val sumOrFiltersScores: Boolean? = null,

  /** Retrieve facets and their facet values. */
  @SerialName(value = "facets") val facets: List<String>? = null,

  /** Maximum number of facet values to return for each facet during a regular search. */
  @SerialName(value = "maxValuesPerFacet") val maxValuesPerFacet: Int? = null,

  /** Force faceting to be applied after de-duplication (via the Distinct setting). */
  @SerialName(value = "facetingAfterDistinct") val facetingAfterDistinct: Boolean? = null,

  /** Controls how facet values are fetched. */
  @SerialName(value = "sortFacetValuesBy") val sortFacetValuesBy: String? = null,

  /** Specify the page to retrieve. */
  @SerialName(value = "page") val page: Int? = null,

  /** Specify the offset of the first hit to return. */
  @SerialName(value = "offset") val offset: Int? = null,

  /** Set the number of hits to retrieve (used only with offset). */
  @SerialName(value = "length") val length: Int? = null,

  /** Search for entries around a central geolocation, enabling a geo search within a circular area. */
  @SerialName(value = "aroundLatLng") val aroundLatLng: String? = null,

  /** Search for entries around a given location automatically computed from the requester's IP address. */
  @SerialName(value = "aroundLatLngViaIP") val aroundLatLngViaIP: Boolean? = null,

  @SerialName(value = "aroundRadius") val aroundRadius: AroundRadius? = null,

  /** Precision of geo search (in meters), to add grouping by geo location to the ranking formula. */
  @SerialName(value = "aroundPrecision") val aroundPrecision: Int? = null,

  /** Minimum radius (in meters) used for a geo search when aroundRadius is not set. */
  @SerialName(value = "minimumAroundRadius") val minimumAroundRadius: Int? = null,

  /** Search inside a rectangular area (in geo coordinates). */
  @SerialName(value = "insideBoundingBox") val insideBoundingBox: List<Double>? = null,

  /** Search inside a polygon (in geo coordinates). */
  @SerialName(value = "insidePolygon") val insidePolygon: List<Double>? = null,

  /** This parameter changes the default values of certain parameters and settings that work best for a natural language query, such as ignorePlurals, removeStopWords, removeWordsIfNoResults, analyticsTags and ruleContexts. These parameters and settings work well together when the query is formatted in natural language instead of keywords, for example when your user performs a voice search. */
  @SerialName(value = "naturalLanguages") val naturalLanguages: List<String>? = null,

  /** Enables contextual rules. */
  @SerialName(value = "ruleContexts") val ruleContexts: List<String>? = null,

  /** Define the impact of the Personalization feature. */
  @SerialName(value = "personalizationImpact") val personalizationImpact: Int? = null,

  /** Associates a certain user token with the current search. */
  @SerialName(value = "userToken") val userToken: String? = null,

  /** Retrieve detailed ranking information. */
  @SerialName(value = "getRankingInfo") val getRankingInfo: Boolean? = null,

  /** Enable the Click Analytics feature. */
  @SerialName(value = "clickAnalytics") val clickAnalytics: Boolean? = null,

  /** Whether the current query will be taken into account in the Analytics. */
  @SerialName(value = "analytics") val analytics: Boolean? = null,

  /** List of tags to apply to the query for analytics purposes. */
  @SerialName(value = "analyticsTags") val analyticsTags: List<String>? = null,

  /** Whether to include or exclude a query from the processing-time percentile computation. */
  @SerialName(value = "percentileComputation") val percentileComputation: Boolean? = null,

  /** Whether this search should participate in running AB tests. */
  @SerialName(value = "enableABTest") val enableABTest: Boolean? = null,

  /** Whether this search should use AI Re-Ranking. */
  @SerialName(value = "enableReRanking") val enableReRanking: Boolean? = null,

  @SerialName(value = "reRankingApplyFilter") val reRankingApplyFilter: ReRankingApplyFilter? = null,
)
