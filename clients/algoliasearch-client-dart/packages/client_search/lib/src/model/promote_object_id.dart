// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'promote_object_id.g.dart';

@JsonSerializable()
final class PromoteObjectID{
  /// Returns a new [PromoteObjectID] instance.
  const PromoteObjectID({
    required this.objectID,
    required this.position,
  });

      /// Unique record identifier.
  @JsonKey(name: r'objectID')
  final String objectID;



      /// Position in the search results where you want to show the promoted records.
  @JsonKey(name: r'position')
  final int position;



  @override
  bool operator ==(Object other) => identical(this, other) || other is PromoteObjectID &&
     other.objectID == objectID &&
     other.position == position
    ;

  @override
  int get hashCode =>
    objectID.hashCode +
    position.hashCode
    ;

  factory PromoteObjectID.fromJson(Map<String, dynamic> json) => _$PromoteObjectIDFromJson(json);

  Map<String, dynamic> toJson() => _$PromoteObjectIDToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


