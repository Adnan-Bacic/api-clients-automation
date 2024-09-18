// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_recommend/src/model/recommend_search_params.dart';
import 'package:algolia_client_recommend/src/model/related_model.dart';

import 'package:json_annotation/json_annotation.dart';

part 'related_products.g.dart';

@JsonSerializable()
final class RelatedProducts{
  /// Returns a new [RelatedProducts] instance.
  const RelatedProducts({
    required this.model,
    required this.objectID,
     this.fallbackParameters,
  });

  @JsonKey(name: r'model')
  final RelatedModel model;



      /// Unique record identifier.
  @JsonKey(name: r'objectID')
  final String objectID;



  @JsonKey(name: r'fallbackParameters')
  final RecommendSearchParams? fallbackParameters;



  @override
  bool operator ==(Object other) => identical(this, other) || other is RelatedProducts &&
     other.model == model &&
     other.objectID == objectID &&
     other.fallbackParameters == fallbackParameters
    ;

  @override
  int get hashCode =>
    model.hashCode +
    objectID.hashCode +
    fallbackParameters.hashCode
    ;

  factory RelatedProducts.fromJson(Map<String, dynamic> json) => _$RelatedProductsFromJson(json);

  Map<String, dynamic> toJson() => _$RelatedProductsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


