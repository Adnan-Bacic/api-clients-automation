// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import type { Region as AbTestingRegion } from '@algolia/client-abtesting';
import type { Region as AnalyticsRegion } from '@algolia/client-analytics';
import type { ClientOptions } from '@algolia/client-common';
import type {
  AdvancedSyntaxFeatures,
  AlternativesAsExact,
  Anchoring,
  AroundPrecision,
  AroundRadius,
  AroundRadiusAll,
  AutomaticFacetFilter,
  AutomaticFacetFilters,
  BaseSearchParams,
  BaseSearchParamsWithoutQuery,
  BaseSearchResponse,
  BooleanString,
  Condition,
  Consequence,
  ConsequenceHide,
  ConsequenceParams,
  ConsequenceQuery,
  ConsequenceQueryObject,
  CustomDeleteProps,
  CustomGetProps,
  CustomPostProps,
  CustomPutProps,
  DeletedAtResponse,
  Distinct,
  Edit,
  EditType,
  ErrorBase,
  ExactOnSingleWordQuery,
  Exhaustive,
  FacetFilters,
  FacetOrdering,
  Facets,
  FacetStats,
  HighlightResult,
  HighlightResultOption,
  IgnorePlurals,
  IndexSettingsAsSearchParams,
  MatchLevel,
  MatchedGeoLocation,
  Mode,
  NumericFilters,
  OptionalFilters,
  Params,
  Personalization,
  Promote,
  PromoteObjectID,
  PromoteObjectIDs,
  QueryType,
  Range,
  RankingInfo,
  ReRankingApplyFilter,
  Redirect,
  RedirectRuleIndexMetadata,
  RedirectRuleIndexData,
  RedirectURL,
  RemoveStopWords,
  RemoveWordsIfNoResults,
  RenderingContent,
  SearchPagination,
  SearchParams,
  SearchParamsObject,
  SearchParamsQuery,
  SemanticSearch,
  SnippetResult,
  SnippetResultOption,
  SortRemainingBy,
  SupportedLanguage,
  TagFilters,
  TaskStatus,
  TypoTolerance,
  TypoToleranceEnum,
  Value,
} from '@algolia/client-search';
import { apiClientVersion } from '@algolia/client-search';

type Region = AbTestingRegion | AnalyticsRegion;

export * from '@algolia/client-search';
export * from '@algolia/recommend';
export * from '@algolia/client-personalization';
export * from '@algolia/client-analytics';
export * from '@algolia/client-abtesting';

export {
  AdvancedSyntaxFeatures,
  AlternativesAsExact,
  Anchoring,
  AroundPrecision,
  AroundRadius,
  AroundRadiusAll,
  AutomaticFacetFilter,
  AutomaticFacetFilters,
  BaseSearchParams,
  BaseSearchParamsWithoutQuery,
  BaseSearchResponse,
  BooleanString,
  Condition,
  Consequence,
  ConsequenceHide,
  ConsequenceParams,
  ConsequenceQuery,
  ConsequenceQueryObject,
  CustomDeleteProps,
  CustomGetProps,
  CustomPostProps,
  CustomPutProps,
  DeletedAtResponse,
  Distinct,
  Edit,
  EditType,
  ErrorBase,
  ExactOnSingleWordQuery,
  Exhaustive,
  FacetFilters,
  FacetOrdering,
  Facets,
  FacetStats,
  HighlightResult,
  HighlightResultOption,
  IgnorePlurals,
  IndexSettingsAsSearchParams,
  MatchLevel,
  MatchedGeoLocation,
  Mode,
  NumericFilters,
  OptionalFilters,
  Params,
  Personalization,
  Promote,
  PromoteObjectID,
  PromoteObjectIDs,
  QueryType,
  Range,
  RankingInfo,
  ReRankingApplyFilter,
  Redirect,
  RedirectRuleIndexMetadata,
  RedirectRuleIndexData,
  RedirectURL,
  RemoveStopWords,
  RemoveWordsIfNoResults,
  RenderingContent,
  SearchParams,
  SearchParamsObject,
  SearchParamsQuery,
  SemanticSearch,
  SearchPagination,
  SnippetResult,
  SnippetResultOption,
  SortRemainingBy,
  SupportedLanguage,
  TagFilters,
  TaskStatus,
  TypoTolerance,
  TypoToleranceEnum,
  Value,
  AnalyticsRegion,
  AbTestingRegion,
  Region,
  apiClientVersion,
};

/**
 * Options forwarded to the client initialized via the `init` method.
 */
export type InitClientOptions = Partial<{
  /**
   * App to target with the initialized client, defaults to the `algoliasearch` appId.
   */
  appId: string;
  /**
   * API key of the targeted app ID, defaults to the `algoliasearch` apiKey.
   */
  apiKey: string;
  options: ClientOptions;
}>;

export type InitClientRegion<TRegion> = Partial<{
  /**
   * Available regions of the initialized client.
   */
  region: TRegion;
}>;
