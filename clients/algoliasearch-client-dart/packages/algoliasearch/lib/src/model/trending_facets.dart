// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algoliasearch/src/model/trending_facets_model.dart';
import 'package:algoliasearch/src/model/recommend_search_params.dart';

import 'package:json_annotation/json_annotation.dart';

part 'trending_facets.g.dart';

@JsonSerializable()
final class TrendingFacets{
  /// Returns a new [TrendingFacets] instance.
  const TrendingFacets({
    required this.facetName,
    required this.model,
     this.fallbackParameters,
  });

      /// Facet attribute for which to retrieve trending facet values.
  @JsonKey(name: r'facetName')
  final Object? facetName;



  @JsonKey(name: r'model')
  final TrendingFacetsModel model;



  @JsonKey(name: r'fallbackParameters')
  final RecommendSearchParams? fallbackParameters;



  @override
  bool operator ==(Object other) => identical(this, other) || other is TrendingFacets &&
     other.facetName == facetName &&
     other.model == model &&
     other.fallbackParameters == fallbackParameters
    ;

  @override
  int get hashCode =>
    (facetName == null ? 0 : facetName.hashCode) +
    model.hashCode +
    fallbackParameters.hashCode
    ;

  factory TrendingFacets.fromJson(Map<String, dynamic> json) => _$TrendingFacetsFromJson(json);

  Map<String, dynamic> toJson() => _$TrendingFacetsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


