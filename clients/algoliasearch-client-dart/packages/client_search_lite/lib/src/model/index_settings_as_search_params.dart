// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_search_lite/src/model/exact_on_single_word_query.dart';
import 'package:algolia_search_lite/src/model/remove_words_if_no_results.dart';
import 'package:algolia_search_lite/src/model/alternatives_as_exact.dart';
import 'package:algolia_search_lite/src/model/advanced_syntax_features.dart';
import 'package:algolia_search_lite/src/model/index_settings_as_search_params_semantic_search.dart';
import 'package:algolia_search_lite/src/model/mode.dart';
import 'package:algolia_search_lite/src/model/query_type.dart';
import 'package:algolia_search_lite/src/model/rendering_content.dart';

import 'package:json_annotation/json_annotation.dart';

part 'index_settings_as_search_params.g.dart';

@JsonSerializable()
final class IndexSettingsAsSearchParams {
  /// Returns a new [IndexSettingsAsSearchParams] instance.
  const IndexSettingsAsSearchParams({
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
  });

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IndexSettingsAsSearchParams &&
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
          other.renderingContent == renderingContent;

  @override
  int get hashCode =>
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
      renderingContent.hashCode;

  factory IndexSettingsAsSearchParams.fromJson(Map<String, dynamic> json) =>
      _$IndexSettingsAsSearchParamsFromJson(json);

  Map<String, dynamic> toJson() => _$IndexSettingsAsSearchParamsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
