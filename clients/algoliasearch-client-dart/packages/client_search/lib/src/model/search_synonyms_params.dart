// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_search/src/model/synonym_type.dart';

import 'package:json_annotation/json_annotation.dart';

part 'search_synonyms_params.g.dart';

@JsonSerializable()
final class SearchSynonymsParams{
  /// Returns a new [SearchSynonymsParams] instance.
  const SearchSynonymsParams({
     this.query,
     this.type,
     this.page,
     this.hitsPerPage,
  });

      /// Search query.
  @JsonKey(name: r'query')
  final String? query;



  @JsonKey(name: r'type')
  final SynonymType? type;



      /// Page of search results to retrieve.
          // minimum: 0
  @JsonKey(name: r'page')
  final int? page;



      /// Number of hits per page.
          // minimum: 1
          // maximum: 1000
  @JsonKey(name: r'hitsPerPage')
  final int? hitsPerPage;



  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchSynonymsParams &&
     other.query == query &&
     other.type == type &&
     other.page == page &&
     other.hitsPerPage == hitsPerPage
    ;

  @override
  int get hashCode =>
    query.hashCode +
    type.hashCode +
    page.hashCode +
    hitsPerPage.hashCode
    ;

  factory SearchSynonymsParams.fromJson(Map<String, dynamic> json) => _$SearchSynonymsParamsFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSynonymsParamsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


