// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_recommend/src/model/fbt_model.dart';

import 'package:json_annotation/json_annotation.dart';

part 'frequently_bought_together.g.dart';

@JsonSerializable()
final class FrequentlyBoughtTogether{
  /// Returns a new [FrequentlyBoughtTogether] instance.
  const FrequentlyBoughtTogether({
    required this.model,
    required this.objectID,
  });

  @JsonKey(name: r'model')
  final FbtModel model;



      /// Unique record identifier.
  @JsonKey(name: r'objectID')
  final String objectID;



  @override
  bool operator ==(Object other) => identical(this, other) || other is FrequentlyBoughtTogether &&
     other.model == model &&
     other.objectID == objectID
    ;

  @override
  int get hashCode =>
    model.hashCode +
    objectID.hashCode
    ;

  factory FrequentlyBoughtTogether.fromJson(Map<String, dynamic> json) => _$FrequentlyBoughtTogetherFromJson(json);

  Map<String, dynamic> toJson() => _$FrequentlyBoughtTogetherToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


