// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_search/src/model/facets.dart';
import 'package:algolia_client_search/src/model/value.dart';

import 'package:json_annotation/json_annotation.dart';

part 'facet_ordering.g.dart';

@JsonSerializable()
final class FacetOrdering{
  /// Returns a new [FacetOrdering] instance.
  const FacetOrdering({
     this.facets,
     this.values,
  });

  @JsonKey(name: r'facets')
  final Facets? facets;



      /// Order of facet values. One object for each facet.
  @JsonKey(name: r'values')
  final Map<String, Value>? values;



  @override
  bool operator ==(Object other) => identical(this, other) || other is FacetOrdering &&
     other.facets == facets &&
     other.values == values
    ;

  @override
  int get hashCode =>
    facets.hashCode +
    values.hashCode
    ;

  factory FacetOrdering.fromJson(Map<String, dynamic> json) => _$FacetOrderingFromJson(json);

  Map<String, dynamic> toJson() => _$FacetOrderingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


