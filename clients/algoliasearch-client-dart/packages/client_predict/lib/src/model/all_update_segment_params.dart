// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_predict/src/model/segment_parent_conditions.dart';

import 'package:json_annotation/json_annotation.dart';

part 'all_update_segment_params.g.dart';

@JsonSerializable()
final class AllUpdateSegmentParams {
  /// Returns a new [AllUpdateSegmentParams] instance.
  const AllUpdateSegmentParams({
    this.name,
    this.conditions,
  });

  /// The name or description of the segment.
  @JsonKey(name: r'name')
  final String? name;

  @JsonKey(name: r'conditions')
  final SegmentParentConditions? conditions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AllUpdateSegmentParams &&
          other.name == name &&
          other.conditions == conditions;

  @override
  int get hashCode => name.hashCode + conditions.hashCode;

  factory AllUpdateSegmentParams.fromJson(Map<String, dynamic> json) =>
      _$AllUpdateSegmentParamsFromJson(json);

  Map<String, dynamic> toJson() => _$AllUpdateSegmentParamsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
