// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'facets.g.dart';

@JsonSerializable()
final class Facets{
  /// Returns a new [Facets] instance.
  const Facets({
     this.order,
  });

      /// Explicit order of facets or facet values.  This setting lets you always show specific facets or facet values at the top of the list. 
  @JsonKey(name: r'order')
  final List<String>? order;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Facets &&
     other.order == order
    ;

  @override
  int get hashCode =>
    order.hashCode
    ;

  factory Facets.fromJson(Map<String, dynamic> json) => _$FacetsFromJson(json);

  Map<String, dynamic> toJson() => _$FacetsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


