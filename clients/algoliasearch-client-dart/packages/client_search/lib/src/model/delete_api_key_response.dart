// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'delete_api_key_response.g.dart';

@JsonSerializable()
final class DeleteApiKeyResponse{
  /// Returns a new [DeleteApiKeyResponse] instance.
  const DeleteApiKeyResponse({
    required this.deletedAt,
  });

      /// Date and time when the object was deleted, in RFC 3339 format.
  @JsonKey(name: r'deletedAt')
  final String deletedAt;



  @override
  bool operator ==(Object other) => identical(this, other) || other is DeleteApiKeyResponse &&
     other.deletedAt == deletedAt
    ;

  @override
  int get hashCode =>
    deletedAt.hashCode
    ;

  factory DeleteApiKeyResponse.fromJson(Map<String, dynamic> json) => _$DeleteApiKeyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteApiKeyResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


