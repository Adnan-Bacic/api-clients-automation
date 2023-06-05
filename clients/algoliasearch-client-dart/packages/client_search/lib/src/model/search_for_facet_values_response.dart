// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_search/src/model/facet_hits.dart';

import 'package:json_annotation/json_annotation.dart';

part 'search_for_facet_values_response.g.dart';

@JsonSerializable()
final class SearchForFacetValuesResponse {
  /// Returns a new [SearchForFacetValuesResponse] instance.
  const SearchForFacetValuesResponse({
    required this.facetHits,
  });

  @JsonKey(name: r'facetHits')
  final List<FacetHits> facetHits;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchForFacetValuesResponse && other.facetHits == facetHits;

  @override
  int get hashCode => facetHits.hashCode;

  factory SearchForFacetValuesResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchForFacetValuesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchForFacetValuesResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
