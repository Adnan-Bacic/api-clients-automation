// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_recommend/src/model/trending_facets_model.dart';
import 'package:algolia_client_recommend/src/model/recommend_search_params.dart';

import 'package:json_annotation/json_annotation.dart';

part 'trending_facets_query.g.dart';

@JsonSerializable()
final class TrendingFacetsQuery{
  /// Returns a new [TrendingFacetsQuery] instance.
  const TrendingFacetsQuery({
    required this.indexName,
    required this.threshold,
     this.maxRecommendations,
     this.queryParameters,
    required this.facetName,
    required this.model,
     this.fallbackParameters,
  });

      /// Index name (case-sensitive).
  @JsonKey(name: r'indexName')
  final String indexName;



      /// Minimum score a recommendation must have to be included in the response.
          // minimum: 0
          // maximum: 100
  @JsonKey(name: r'threshold')
  final double threshold;



      /// Maximum number of recommendations to retrieve. By default, all recommendations are returned and no fallback request is made. Depending on the available recommendations and the other request parameters, the actual number of recommendations may be lower than this value. 
          // minimum: 1
          // maximum: 1000
  @JsonKey(name: r'maxRecommendations')
  final int? maxRecommendations;



  @JsonKey(name: r'queryParameters')
  final RecommendSearchParams? queryParameters;



      /// Facet attribute for which to retrieve trending facet values.
  @JsonKey(name: r'facetName')
  final Object? facetName;



  @JsonKey(name: r'model')
  final TrendingFacetsModel model;



  @JsonKey(name: r'fallbackParameters')
  final RecommendSearchParams? fallbackParameters;



  @override
  bool operator ==(Object other) => identical(this, other) || other is TrendingFacetsQuery &&
     other.indexName == indexName &&
     other.threshold == threshold &&
     other.maxRecommendations == maxRecommendations &&
     other.queryParameters == queryParameters &&
     other.facetName == facetName &&
     other.model == model &&
     other.fallbackParameters == fallbackParameters
    ;

  @override
  int get hashCode =>
    indexName.hashCode +
    threshold.hashCode +
    maxRecommendations.hashCode +
    queryParameters.hashCode +
    (facetName == null ? 0 : facetName.hashCode) +
    model.hashCode +
    fallbackParameters.hashCode
    ;

  factory TrendingFacetsQuery.fromJson(Map<String, dynamic> json) => _$TrendingFacetsQueryFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingFacetsQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


