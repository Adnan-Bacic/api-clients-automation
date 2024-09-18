// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'replace_source_response.g.dart';

@JsonSerializable()
final class ReplaceSourceResponse{
  /// Returns a new [ReplaceSourceResponse] instance.
  const ReplaceSourceResponse({
    required this.updatedAt,
  });

      /// Date and time when the object was updated, in RFC 3339 format.
  @JsonKey(name: r'updatedAt')
  final String updatedAt;



  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplaceSourceResponse &&
     other.updatedAt == updatedAt
    ;

  @override
  int get hashCode =>
    updatedAt.hashCode
    ;

  factory ReplaceSourceResponse.fromJson(Map<String, dynamic> json) => _$ReplaceSourceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReplaceSourceResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


