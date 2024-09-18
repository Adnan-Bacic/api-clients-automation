// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algoliasearch/src/model/looking_similar_model.dart';
import 'package:algoliasearch/src/model/recommend_search_params.dart';

import 'package:json_annotation/json_annotation.dart';

part 'looking_similar_query.g.dart';

@JsonSerializable()
final class LookingSimilarQuery{
  /// Returns a new [LookingSimilarQuery] instance.
  const LookingSimilarQuery({
    required this.indexName,
    required this.threshold,
     this.maxRecommendations,
     this.queryParameters,
    required this.model,
    required this.objectID,
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
  final LookingSimilarModel model;



      /// Unique record identifier.
  @JsonKey(name: r'objectID')
  final String objectID;



  @JsonKey(name: r'fallbackParameters')
  final RecommendSearchParams? fallbackParameters;



  @override
  bool operator ==(Object other) => identical(this, other) || other is LookingSimilarQuery &&
     other.indexName == indexName &&
     other.threshold == threshold &&
     other.maxRecommendations == maxRecommendations &&
     other.queryParameters == queryParameters &&
     other.model == model &&
     other.objectID == objectID &&
     other.fallbackParameters == fallbackParameters
    ;

  @override
  int get hashCode =>
    indexName.hashCode +
    threshold.hashCode +
    maxRecommendations.hashCode +
    queryParameters.hashCode +
    model.hashCode +
    objectID.hashCode +
    fallbackParameters.hashCode
    ;

  factory LookingSimilarQuery.fromJson(Map<String, dynamic> json) => _$LookingSimilarQueryFromJson(json);

  Map<String, dynamic> toJson() => _$LookingSimilarQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


