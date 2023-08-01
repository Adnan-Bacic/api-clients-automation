// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'source_update_response.g.dart';

@JsonSerializable()
final class SourceUpdateResponse {
  /// Returns a new [SourceUpdateResponse] instance.
  const SourceUpdateResponse({
    required this.sourceID,
    required this.name,
    required this.updatedAt,
  });

  /// The source UUID.
  @JsonKey(name: r'sourceID')
  final String sourceID;

  @JsonKey(name: r'name')
  final String name;

  /// Date of last update (RFC3339 format).
  @JsonKey(name: r'updatedAt')
  final String updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SourceUpdateResponse &&
          other.sourceID == sourceID &&
          other.name == name &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode => sourceID.hashCode + name.hashCode + updatedAt.hashCode;

  factory SourceUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$SourceUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SourceUpdateResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
