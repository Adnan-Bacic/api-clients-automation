// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_search_lite/src/model/exact_on_single_word_query.dart';
import 'package:algolia_search_lite/src/model/remove_words_if_no_results.dart';
import 'package:algolia_search_lite/src/model/search_type_facet.dart';
import 'package:algolia_search_lite/src/model/advanced_syntax_features.dart';
import 'package:algolia_search_lite/src/model/query_type.dart';
import 'package:algolia_search_lite/src/model/rendering_content.dart';
import 'package:algolia_search_lite/src/model/alternatives_as_exact.dart';
import 'package:algolia_search_lite/src/model/index_settings_as_search_params_semantic_search.dart';
import 'package:algolia_search_lite/src/model/mode.dart';

import 'package:json_annotation/json_annotation.dart';

part 'search_for_facets.g.dart';

@JsonSerializable()
final class SearchForFacets {
  /// Returns a new [SearchForFacets] instance.
  const SearchForFacets({
    this.params,
    this.query,
    this.similarQuery,
    this.filters,
    this.facetFilters,
    this.optionalFilters,
    this.numericFilters,
    this.tagFilters,
    this.sumOrFiltersScores,
    this.facets,
    this.maxValuesPerFacet,
    this.facetingAfterDistinct,
    this.sortFacetValuesBy,
    this.page,
    this.offset,
    this.length,
    this.aroundLatLng,
    this.aroundLatLngViaIP,
    this.aroundRadius,
    this.aroundPrecision,
    this.minimumAroundRadius,
    this.insideBoundingBox,
    this.insidePolygon,
    this.naturalLanguages,
    this.ruleContexts,
    this.personalizationImpact,
    this.userToken,
    this.getRankingInfo,
    this.clickAnalytics,
    this.analytics,
    this.analyticsTags,
    this.percentileComputation,
    this.enableABTest,
    this.enableReRanking,
    this.reRankingApplyFilter,
    this.attributesForFaceting,
    this.attributesToRetrieve,
    this.restrictSearchableAttributes,
    this.ranking,
    this.customRanking,
    this.relevancyStrictness,
    this.attributesToHighlight,
    this.attributesToSnippet,
    this.highlightPreTag,
    this.highlightPostTag,
    this.snippetEllipsisText,
    this.restrictHighlightAndSnippetArrays,
    this.hitsPerPage,
    this.minWordSizefor1Typo,
    this.minWordSizefor2Typos,
    this.typoTolerance,
    this.allowTyposOnNumericTokens,
    this.disableTypoToleranceOnAttributes,
    this.ignorePlurals,
    this.removeStopWords,
    this.keepDiacriticsOnCharacters,
    this.queryLanguages,
    this.decompoundQuery,
    this.enableRules,
    this.enablePersonalization,
    this.queryType,
    this.removeWordsIfNoResults,
    this.mode,
    this.semanticSearch,
    this.advancedSyntax,
    this.optionalWords,
    this.disableExactOnAttributes,
    this.exactOnSingleWordQuery,
    this.alternativesAsExact,
    this.advancedSyntaxFeatures,
    this.explain,
    this.distinct,
    this.attributeForDistinct,
    this.synonyms,
    this.replaceSynonymsInHighlight,
    this.minProximity,
    this.responseFields,
    this.maxFacetHits,
    this.attributeCriteriaComputedByMinProximity,
    this.renderingContent,
    required this.facet,
    required this.indexName,
    this.facetQuery,
    required this.type,
  });

  /// Search parameters as URL-encoded query string.
  @JsonKey(name: r'params')
  final String? params;

  /// The text to search in the index.
  @JsonKey(name: r'query')
  final String? query;

  /// Overrides the query parameter and performs a more generic search that can be used to find \"similar\" results.
  @JsonKey(name: r'similarQuery')
  final String? similarQuery;

  /// Filter the query with numeric, facet and/or tag filters.
  @JsonKey(name: r'filters')
  final String? filters;

  @JsonKey(name: r'facetFilters')
  final dynamic facetFilters;

  @JsonKey(name: r'optionalFilters')
  final dynamic optionalFilters;

  @JsonKey(name: r'numericFilters')
  final dynamic numericFilters;

  @JsonKey(name: r'tagFilters')
  final dynamic tagFilters;

  /// Determines how to calculate the total score for filtering.
  @JsonKey(name: r'sumOrFiltersScores')
  final bool? sumOrFiltersScores;

  /// Retrieve facets and their facet values.
  @JsonKey(name: r'facets')
  final List<String>? facets;

  /// Maximum number of facet values to return for each facet during a regular search.
  @JsonKey(name: r'maxValuesPerFacet')
  final int? maxValuesPerFacet;

  /// Force faceting to be applied after de-duplication (via the Distinct setting).
  @JsonKey(name: r'facetingAfterDistinct')
  final bool? facetingAfterDistinct;

  /// Controls how facet values are fetched.
  @JsonKey(name: r'sortFacetValuesBy')
  final String? sortFacetValuesBy;

  /// Specify the page to retrieve.
  @JsonKey(name: r'page')
  final int? page;

  /// Specify the offset of the first hit to return.
  @JsonKey(name: r'offset')
  final int? offset;

  /// Set the number of hits to retrieve (used only with offset).
  // minimum: 1
  // maximum: 1000
  @JsonKey(name: r'length')
  final int? length;

  /// Search for entries around a central geolocation, enabling a geo search within a circular area.
  @JsonKey(name: r'aroundLatLng')
  final String? aroundLatLng;

  /// Search for entries around a given location automatically computed from the requester's IP address.
  @JsonKey(name: r'aroundLatLngViaIP')
  final bool? aroundLatLngViaIP;

  @JsonKey(name: r'aroundRadius')
  final dynamic aroundRadius;

  /// Precision of geo search (in meters), to add grouping by geo location to the ranking formula.
  @JsonKey(name: r'aroundPrecision')
  final int? aroundPrecision;

  /// Minimum radius (in meters) used for a geo search when aroundRadius is not set.
  // minimum: 1
  @JsonKey(name: r'minimumAroundRadius')
  final int? minimumAroundRadius;

  /// Search inside a rectangular area (in geo coordinates).
  @JsonKey(name: r'insideBoundingBox')
  final List<double>? insideBoundingBox;

  /// Search inside a polygon (in geo coordinates).
  @JsonKey(name: r'insidePolygon')
  final List<double>? insidePolygon;

  /// This parameter changes the default values of certain parameters and settings that work best for a natural language query, such as ignorePlurals, removeStopWords, removeWordsIfNoResults, analyticsTags and ruleContexts. These parameters and settings work well together when the query is formatted in natural language instead of keywords, for example when your user performs a voice search.
  @JsonKey(name: r'naturalLanguages')
  final List<String>? naturalLanguages;

  /// Enables contextual rules.
  @JsonKey(name: r'ruleContexts')
  final List<String>? ruleContexts;

  /// Define the impact of the Personalization feature.
  @JsonKey(name: r'personalizationImpact')
  final int? personalizationImpact;

  /// Associates a certain user token with the current search.
  @JsonKey(name: r'userToken')
  final String? userToken;

  /// Retrieve detailed ranking information.
  @JsonKey(name: r'getRankingInfo')
  final bool? getRankingInfo;

  /// Enable the Click Analytics feature.
  @JsonKey(name: r'clickAnalytics')
  final bool? clickAnalytics;

  /// Whether the current query will be taken into account in the Analytics.
  @JsonKey(name: r'analytics')
  final bool? analytics;

  /// List of tags to apply to the query for analytics purposes.
  @JsonKey(name: r'analyticsTags')
  final List<String>? analyticsTags;

  /// Whether to include or exclude a query from the processing-time percentile computation.
  @JsonKey(name: r'percentileComputation')
  final bool? percentileComputation;

  /// Whether this search should participate in running AB tests.
  @JsonKey(name: r'enableABTest')
  final bool? enableABTest;

  /// Whether this search should use AI Re-Ranking.
  @JsonKey(name: r'enableReRanking')
  final bool? enableReRanking;

  @JsonKey(name: r'reRankingApplyFilter')
  final dynamic reRankingApplyFilter;

  /// The complete list of attributes that will be used for faceting.
  @JsonKey(name: r'attributesForFaceting')
  final List<String>? attributesForFaceting;

  /// This parameter controls which attributes to retrieve and which not to retrieve.
  @JsonKey(name: r'attributesToRetrieve')
  final List<String>? attributesToRetrieve;

  /// Restricts a given query to look in only a subset of your searchable attributes.
  @JsonKey(name: r'restrictSearchableAttributes')
  final List<String>? restrictSearchableAttributes;

  /// Controls how Algolia should sort your results.
  @JsonKey(name: r'ranking')
  final List<String>? ranking;

  /// Specifies the custom ranking criterion.
  @JsonKey(name: r'customRanking')
  final List<String>? customRanking;

  /// Controls the relevancy threshold below which less relevant results aren't included in the results.
  @JsonKey(name: r'relevancyStrictness')
  final int? relevancyStrictness;

  /// List of attributes to highlight.
  @JsonKey(name: r'attributesToHighlight')
  final List<String>? attributesToHighlight;

  /// List of attributes to snippet, with an optional maximum number of words to snippet.
  @JsonKey(name: r'attributesToSnippet')
  final List<String>? attributesToSnippet;

  /// The HTML string to insert before the highlighted parts in all highlight and snippet results.
  @JsonKey(name: r'highlightPreTag')
  final String? highlightPreTag;

  /// The HTML string to insert after the highlighted parts in all highlight and snippet results.
  @JsonKey(name: r'highlightPostTag')
  final String? highlightPostTag;

  /// String used as an ellipsis indicator when a snippet is truncated.
  @JsonKey(name: r'snippetEllipsisText')
  final String? snippetEllipsisText;

  /// Restrict highlighting and snippeting to items that matched the query.
  @JsonKey(name: r'restrictHighlightAndSnippetArrays')
  final bool? restrictHighlightAndSnippetArrays;

  /// Set the number of hits per page.
  @JsonKey(name: r'hitsPerPage')
  final int? hitsPerPage;

  /// Minimum number of characters a word in the query string must contain to accept matches with 1 typo.
  @JsonKey(name: r'minWordSizefor1Typo')
  final int? minWordSizefor1Typo;

  /// Minimum number of characters a word in the query string must contain to accept matches with 2 typos.
  @JsonKey(name: r'minWordSizefor2Typos')
  final int? minWordSizefor2Typos;

  @JsonKey(name: r'typoTolerance')
  final dynamic typoTolerance;

  /// Whether to allow typos on numbers (\"numeric tokens\") in the query string.
  @JsonKey(name: r'allowTyposOnNumericTokens')
  final bool? allowTyposOnNumericTokens;

  /// List of attributes on which you want to disable typo tolerance.
  @JsonKey(name: r'disableTypoToleranceOnAttributes')
  final List<String>? disableTypoToleranceOnAttributes;

  @JsonKey(name: r'ignorePlurals')
  final dynamic ignorePlurals;

  @JsonKey(name: r'removeStopWords')
  final dynamic removeStopWords;

  /// List of characters that the engine shouldn't automatically normalize.
  @JsonKey(name: r'keepDiacriticsOnCharacters')
  final String? keepDiacriticsOnCharacters;

  /// Sets the languages to be used by language-specific settings and functionalities such as ignorePlurals, removeStopWords, and CJK word-detection.
  @JsonKey(name: r'queryLanguages')
  final List<String>? queryLanguages;

  /// Splits compound words into their composing atoms in the query.
  @JsonKey(name: r'decompoundQuery')
  final bool? decompoundQuery;

  /// Whether Rules should be globally enabled.
  @JsonKey(name: r'enableRules')
  final bool? enableRules;

  /// Enable the Personalization feature.
  @JsonKey(name: r'enablePersonalization')
  final bool? enablePersonalization;

  @JsonKey(name: r'queryType')
  final QueryType? queryType;

  @JsonKey(name: r'removeWordsIfNoResults')
  final RemoveWordsIfNoResults? removeWordsIfNoResults;

  @JsonKey(name: r'mode')
  final Mode? mode;

  @JsonKey(name: r'semanticSearch')
  final IndexSettingsAsSearchParamsSemanticSearch? semanticSearch;

  /// Enables the advanced query syntax.
  @JsonKey(name: r'advancedSyntax')
  final bool? advancedSyntax;

  /// A list of words that should be considered as optional when found in the query.
  @JsonKey(name: r'optionalWords')
  final List<String>? optionalWords;

  /// List of attributes on which you want to disable the exact ranking criterion.
  @JsonKey(name: r'disableExactOnAttributes')
  final List<String>? disableExactOnAttributes;

  @JsonKey(name: r'exactOnSingleWordQuery')
  final ExactOnSingleWordQuery? exactOnSingleWordQuery;

  /// List of alternatives that should be considered an exact match by the exact ranking criterion.
  @JsonKey(name: r'alternativesAsExact')
  final List<AlternativesAsExact>? alternativesAsExact;

  /// Allows you to specify which advanced syntax features are active when ‘advancedSyntax' is enabled.
  @JsonKey(name: r'advancedSyntaxFeatures')
  final List<AdvancedSyntaxFeatures>? advancedSyntaxFeatures;

  /// Enriches the API’s response with meta-information as to how the query was processed.
  @JsonKey(name: r'explain')
  final List<String>? explain;

  @JsonKey(name: r'distinct')
  final dynamic distinct;

  /// Name of the de-duplication attribute to be used with the distinct feature.
  @JsonKey(name: r'attributeForDistinct')
  final String? attributeForDistinct;

  /// Whether to take into account an index's synonyms for a particular search.
  @JsonKey(name: r'synonyms')
  final bool? synonyms;

  /// Whether to highlight and snippet the original word that matches the synonym or the synonym itself.
  @JsonKey(name: r'replaceSynonymsInHighlight')
  final bool? replaceSynonymsInHighlight;

  /// Precision of the proximity ranking criterion.
  // minimum: 1
  // maximum: 7
  @JsonKey(name: r'minProximity')
  final int? minProximity;

  /// Choose which fields to return in the API response. This parameters applies to search and browse queries.
  @JsonKey(name: r'responseFields')
  final List<String>? responseFields;

  /// Maximum number of facet hits to return during a search for facet values. For performance reasons, the maximum allowed number of returned values is 100.
  // maximum: 100
  @JsonKey(name: r'maxFacetHits')
  final int? maxFacetHits;

  /// When attribute is ranked above proximity in your ranking formula, proximity is used to select which searchable attribute is matched in the attribute ranking stage.
  @JsonKey(name: r'attributeCriteriaComputedByMinProximity')
  final bool? attributeCriteriaComputedByMinProximity;

  @JsonKey(name: r'renderingContent')
  final RenderingContent? renderingContent;

  /// The `facet` name.
  @JsonKey(name: r'facet')
  final String facet;

  /// The Algolia index name.
  @JsonKey(name: r'indexName')
  final String indexName;

  /// Text to search inside the facet's values.
  @JsonKey(name: r'facetQuery')
  final String? facetQuery;

  @JsonKey(name: r'type')
  final SearchTypeFacet type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchForFacets &&
          other.params == params &&
          other.query == query &&
          other.similarQuery == similarQuery &&
          other.filters == filters &&
          other.facetFilters == facetFilters &&
          other.optionalFilters == optionalFilters &&
          other.numericFilters == numericFilters &&
          other.tagFilters == tagFilters &&
          other.sumOrFiltersScores == sumOrFiltersScores &&
          other.facets == facets &&
          other.maxValuesPerFacet == maxValuesPerFacet &&
          other.facetingAfterDistinct == facetingAfterDistinct &&
          other.sortFacetValuesBy == sortFacetValuesBy &&
          other.page == page &&
          other.offset == offset &&
          other.length == length &&
          other.aroundLatLng == aroundLatLng &&
          other.aroundLatLngViaIP == aroundLatLngViaIP &&
          other.aroundRadius == aroundRadius &&
          other.aroundPrecision == aroundPrecision &&
          other.minimumAroundRadius == minimumAroundRadius &&
          other.insideBoundingBox == insideBoundingBox &&
          other.insidePolygon == insidePolygon &&
          other.naturalLanguages == naturalLanguages &&
          other.ruleContexts == ruleContexts &&
          other.personalizationImpact == personalizationImpact &&
          other.userToken == userToken &&
          other.getRankingInfo == getRankingInfo &&
          other.clickAnalytics == clickAnalytics &&
          other.analytics == analytics &&
          other.analyticsTags == analyticsTags &&
          other.percentileComputation == percentileComputation &&
          other.enableABTest == enableABTest &&
          other.enableReRanking == enableReRanking &&
          other.reRankingApplyFilter == reRankingApplyFilter &&
          other.attributesForFaceting == attributesForFaceting &&
          other.attributesToRetrieve == attributesToRetrieve &&
          other.restrictSearchableAttributes == restrictSearchableAttributes &&
          other.ranking == ranking &&
          other.customRanking == customRanking &&
          other.relevancyStrictness == relevancyStrictness &&
          other.attributesToHighlight == attributesToHighlight &&
          other.attributesToSnippet == attributesToSnippet &&
          other.highlightPreTag == highlightPreTag &&
          other.highlightPostTag == highlightPostTag &&
          other.snippetEllipsisText == snippetEllipsisText &&
          other.restrictHighlightAndSnippetArrays ==
              restrictHighlightAndSnippetArrays &&
          other.hitsPerPage == hitsPerPage &&
          other.minWordSizefor1Typo == minWordSizefor1Typo &&
          other.minWordSizefor2Typos == minWordSizefor2Typos &&
          other.typoTolerance == typoTolerance &&
          other.allowTyposOnNumericTokens == allowTyposOnNumericTokens &&
          other.disableTypoToleranceOnAttributes ==
              disableTypoToleranceOnAttributes &&
          other.ignorePlurals == ignorePlurals &&
          other.removeStopWords == removeStopWords &&
          other.keepDiacriticsOnCharacters == keepDiacriticsOnCharacters &&
          other.queryLanguages == queryLanguages &&
          other.decompoundQuery == decompoundQuery &&
          other.enableRules == enableRules &&
          other.enablePersonalization == enablePersonalization &&
          other.queryType == queryType &&
          other.removeWordsIfNoResults == removeWordsIfNoResults &&
          other.mode == mode &&
          other.semanticSearch == semanticSearch &&
          other.advancedSyntax == advancedSyntax &&
          other.optionalWords == optionalWords &&
          other.disableExactOnAttributes == disableExactOnAttributes &&
          other.exactOnSingleWordQuery == exactOnSingleWordQuery &&
          other.alternativesAsExact == alternativesAsExact &&
          other.advancedSyntaxFeatures == advancedSyntaxFeatures &&
          other.explain == explain &&
          other.distinct == distinct &&
          other.attributeForDistinct == attributeForDistinct &&
          other.synonyms == synonyms &&
          other.replaceSynonymsInHighlight == replaceSynonymsInHighlight &&
          other.minProximity == minProximity &&
          other.responseFields == responseFields &&
          other.maxFacetHits == maxFacetHits &&
          other.attributeCriteriaComputedByMinProximity ==
              attributeCriteriaComputedByMinProximity &&
          other.renderingContent == renderingContent &&
          other.facet == facet &&
          other.indexName == indexName &&
          other.facetQuery == facetQuery &&
          other.type == type;

  @override
  int get hashCode =>
      params.hashCode +
      query.hashCode +
      similarQuery.hashCode +
      filters.hashCode +
      facetFilters.hashCode +
      optionalFilters.hashCode +
      numericFilters.hashCode +
      tagFilters.hashCode +
      sumOrFiltersScores.hashCode +
      facets.hashCode +
      maxValuesPerFacet.hashCode +
      facetingAfterDistinct.hashCode +
      sortFacetValuesBy.hashCode +
      page.hashCode +
      offset.hashCode +
      length.hashCode +
      aroundLatLng.hashCode +
      aroundLatLngViaIP.hashCode +
      aroundRadius.hashCode +
      aroundPrecision.hashCode +
      minimumAroundRadius.hashCode +
      insideBoundingBox.hashCode +
      insidePolygon.hashCode +
      naturalLanguages.hashCode +
      ruleContexts.hashCode +
      personalizationImpact.hashCode +
      userToken.hashCode +
      getRankingInfo.hashCode +
      clickAnalytics.hashCode +
      analytics.hashCode +
      analyticsTags.hashCode +
      percentileComputation.hashCode +
      enableABTest.hashCode +
      enableReRanking.hashCode +
      (reRankingApplyFilter == null ? 0 : reRankingApplyFilter.hashCode) +
      attributesForFaceting.hashCode +
      attributesToRetrieve.hashCode +
      restrictSearchableAttributes.hashCode +
      ranking.hashCode +
      customRanking.hashCode +
      relevancyStrictness.hashCode +
      attributesToHighlight.hashCode +
      attributesToSnippet.hashCode +
      highlightPreTag.hashCode +
      highlightPostTag.hashCode +
      snippetEllipsisText.hashCode +
      restrictHighlightAndSnippetArrays.hashCode +
      hitsPerPage.hashCode +
      minWordSizefor1Typo.hashCode +
      minWordSizefor2Typos.hashCode +
      typoTolerance.hashCode +
      allowTyposOnNumericTokens.hashCode +
      disableTypoToleranceOnAttributes.hashCode +
      ignorePlurals.hashCode +
      removeStopWords.hashCode +
      keepDiacriticsOnCharacters.hashCode +
      queryLanguages.hashCode +
      decompoundQuery.hashCode +
      enableRules.hashCode +
      enablePersonalization.hashCode +
      queryType.hashCode +
      removeWordsIfNoResults.hashCode +
      mode.hashCode +
      semanticSearch.hashCode +
      advancedSyntax.hashCode +
      optionalWords.hashCode +
      disableExactOnAttributes.hashCode +
      exactOnSingleWordQuery.hashCode +
      alternativesAsExact.hashCode +
      advancedSyntaxFeatures.hashCode +
      explain.hashCode +
      distinct.hashCode +
      attributeForDistinct.hashCode +
      synonyms.hashCode +
      replaceSynonymsInHighlight.hashCode +
      minProximity.hashCode +
      responseFields.hashCode +
      maxFacetHits.hashCode +
      attributeCriteriaComputedByMinProximity.hashCode +
      renderingContent.hashCode +
      facet.hashCode +
      indexName.hashCode +
      facetQuery.hashCode +
      type.hashCode;

  factory SearchForFacets.fromJson(Map<String, dynamic> json) =>
      _$SearchForFacetsFromJson(json);

  Map<String, dynamic> toJson() => _$SearchForFacetsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
