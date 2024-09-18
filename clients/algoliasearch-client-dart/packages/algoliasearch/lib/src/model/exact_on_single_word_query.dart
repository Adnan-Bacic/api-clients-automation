// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

/// Determines how the [Exact ranking criterion](https://www.algolia.com/doc/guides/managing-results/optimize-search-results/override-search-engine-defaults/in-depth/adjust-exact-settings/#turn-off-exact-for-some-attributes) is computed when the search query has only one word.  - `attribute`.   The Exact ranking criterion is 1 if the query word and attribute value are the same.   For example, a search for \"road\" will match the value \"road\", but not \"road trip\".  - `none`.   The Exact ranking criterion is ignored on single-word searches.  - `word`.   The Exact ranking criterion is 1 if the query word is found in the attribute value.   The query word must have at least 3 characters and must not be a stop word.   Only exact matches will be highlighted,   partial and prefix matches won't. 
@JsonEnum(valueField: 'raw')
enum ExactOnSingleWordQuery {
  attribute(r'attribute'),
  none(r'none'),
  word(r'word');

  const ExactOnSingleWordQuery(this.raw);
  final dynamic raw;

  dynamic toJson() => raw;

  static ExactOnSingleWordQuery fromJson(dynamic json) {
    for (final value in values) {
      if (value.raw == json) return value;
    }
    throw ArgumentError.value(json, "raw", "No enum value with that value");
  }

  @override
  String toString() => raw.toString();
}

