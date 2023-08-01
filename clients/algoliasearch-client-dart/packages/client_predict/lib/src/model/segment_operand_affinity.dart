// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_predict/src/model/segment_affinity_filter.dart';

import 'package:json_annotation/json_annotation.dart';

part 'segment_operand_affinity.g.dart';

@JsonSerializable()
final class SegmentOperandAffinity {
  /// Returns a new [SegmentOperandAffinity] instance.
  const SegmentOperandAffinity({
    required this.name,
    required this.filters,
  });

  @JsonKey(name: r'name')
  final String name;

  @JsonKey(name: r'filters')
  final List<SegmentAffinityFilter> filters;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SegmentOperandAffinity &&
          other.name == name &&
          other.filters == filters;

  @override
  int get hashCode => name.hashCode + filters.hashCode;

  factory SegmentOperandAffinity.fromJson(Map<String, dynamic> json) =>
      _$SegmentOperandAffinityFromJson(json);

  Map<String, dynamic> toJson() => _$SegmentOperandAffinityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
