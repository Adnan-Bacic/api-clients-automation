// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'authentication_search.g.dart';

@JsonSerializable()
final class AuthenticationSearch {
  /// Returns a new [AuthenticationSearch] instance.
  const AuthenticationSearch({
    required this.authenticationIDs,
  });

  @JsonKey(name: r'authenticationIDs')
  final List<String> authenticationIDs;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthenticationSearch &&
          other.authenticationIDs == authenticationIDs;

  @override
  int get hashCode => authenticationIDs.hashCode;

  factory AuthenticationSearch.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationSearchFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationSearchToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
