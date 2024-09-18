// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'facet_stats.g.dart';

@JsonSerializable()
final class FacetStats{
  /// Returns a new [FacetStats] instance.
  const FacetStats({
     this.min,
     this.max,
     this.avg,
     this.sum,
  });

      /// Minimum value in the results.
  @JsonKey(name: r'min')
  final double? min;



      /// Maximum value in the results.
  @JsonKey(name: r'max')
  final double? max;



      /// Average facet value in the results.
  @JsonKey(name: r'avg')
  final double? avg;



      /// Sum of all values in the results.
  @JsonKey(name: r'sum')
  final double? sum;



  @override
  bool operator ==(Object other) => identical(this, other) || other is FacetStats &&
     other.min == min &&
     other.max == max &&
     other.avg == avg &&
     other.sum == sum
    ;

  @override
  int get hashCode =>
    min.hashCode +
    max.hashCode +
    avg.hashCode +
    sum.hashCode
    ;

  factory FacetStats.fromJson(Map<String, dynamic> json) => _$FacetStatsFromJson(json);

  Map<String, dynamic> toJson() => _$FacetStatsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


