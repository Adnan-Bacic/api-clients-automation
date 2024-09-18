// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algoliasearch/src/model/redirect_rule_index_metadata.dart';

import 'package:json_annotation/json_annotation.dart';

part 'redirect.g.dart';

@JsonSerializable()
final class Redirect{
  /// Returns a new [Redirect] instance.
  const Redirect({
     this.index,
  });

  @JsonKey(name: r'index')
  final List<RedirectRuleIndexMetadata>? index;



  @override
  bool operator ==(Object other) => identical(this, other) || other is Redirect &&
     other.index == index
    ;

  @override
  int get hashCode =>
    index.hashCode
    ;

  factory Redirect.fromJson(Map<String, dynamic> json) => _$RedirectFromJson(json);

  Map<String, dynamic> toJson() => _$RedirectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


