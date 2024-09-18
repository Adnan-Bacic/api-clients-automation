// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_recommend/src/model/recommended_for_you_model.dart';
import 'package:algolia_client_recommend/src/model/recommend_search_params.dart';

import 'package:json_annotation/json_annotation.dart';

part 'recommended_for_you_query.g.dart';

@JsonSerializable()
final class RecommendedForYouQuery{
  /// Returns a new [RecommendedForYouQuery] instance.
  const RecommendedForYouQuery({
    required this.indexName,
    required this.threshold,
     this.maxRecommendations,
     this.queryParameters,
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



  @JsonKey(name: r'model')
  final RecommendedForYouModel model;



  @JsonKey(name: r'fallbackParameters')
  final RecommendSearchParams? fallbackParameters;



  @override
  bool operator ==(Object other) => identical(this, other) || other is RecommendedForYouQuery &&
     other.indexName == indexName &&
     other.threshold == threshold &&
     other.maxRecommendations == maxRecommendations &&
     other.queryParameters == queryParameters &&
     other.model == model &&
     other.fallbackParameters == fallbackParameters
    ;

  @override
  int get hashCode =>
    indexName.hashCode +
    threshold.hashCode +
    maxRecommendations.hashCode +
    queryParameters.hashCode +
    model.hashCode +
    fallbackParameters.hashCode
    ;

  factory RecommendedForYouQuery.fromJson(Map<String, dynamic> json) => _$RecommendedForYouQueryFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendedForYouQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


