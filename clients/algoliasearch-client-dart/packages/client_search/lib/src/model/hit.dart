// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:algolia_client_search/src/model/ranking_info.dart';

import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hit.g.dart';

@JsonSerializable(createFieldMap: true)
final class Hit extends DelegatingMap<String, dynamic> {
  /// Returns a new [Hit] instance.
  const Hit({
    required this.objectID,
     this.highlightResult,
     this.snippetResult,
     this.rankingInfo,
     this.distinctSeqID,
    Map<String, dynamic> additionalProperties = const {},
  }): super(additionalProperties);

        /// Unique record identifier.
    @JsonKey(name: r'objectID')
    final String objectID;

        /// Surround words that match the query with HTML tags for highlighting.
    @JsonKey(name: r'_highlightResult')
    final Map<String, dynamic>? highlightResult;

        /// Snippets that show the context around a matching search query.
    @JsonKey(name: r'_snippetResult')
    final Map<String, dynamic>? snippetResult;

    @JsonKey(name: r'_rankingInfo')
    final RankingInfo? rankingInfo;

    @JsonKey(name: r'_distinctSeqID')
    final int? distinctSeqID;


  @override
  bool operator ==(Object other) => identical(this, other) || other is Hit &&
     other.objectID == objectID &&
     other.highlightResult == highlightResult &&
     other.snippetResult == snippetResult &&
     other.rankingInfo == rankingInfo &&
     other.distinctSeqID == distinctSeqID &&
     const MapEquality<String, dynamic>().equals(this, this); 

  @override
  int get hashCode =>
    objectID.hashCode +
    highlightResult.hashCode +
    snippetResult.hashCode +
    rankingInfo.hashCode +
    distinctSeqID.hashCode +
    const MapEquality<String, dynamic>().hash(this);

  factory Hit.fromJson(Map<String, dynamic> json) {
     final instance = _$HitFromJson(json);
     final additionalProperties = Map<String, dynamic>.from(json)
      ..removeWhere((key, value) => _$HitFieldMap.containsKey(key));
     return Hit (
          objectID: instance.objectID,
          highlightResult: instance.highlightResult,
          snippetResult: instance.snippetResult,
          rankingInfo: instance.rankingInfo,
          distinctSeqID: instance.distinctSeqID,
       additionalProperties: additionalProperties,
     );
  }

  Map<String, dynamic> toJson() => _$HitToJson(this)..addAll(this);

  @override
  String toString() {
    return toJson().toString();
  }
}


