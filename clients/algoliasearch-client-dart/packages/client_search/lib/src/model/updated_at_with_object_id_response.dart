// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'updated_at_with_object_id_response.g.dart';

@JsonSerializable()
final class UpdatedAtWithObjectIdResponse{
  /// Returns a new [UpdatedAtWithObjectIdResponse] instance.
  const UpdatedAtWithObjectIdResponse({
     this.taskID,
     this.updatedAt,
     this.objectID,
  });

      /// Unique identifier of a task.  A successful API response means that a task was added to a queue. It might not run immediately. You can check the task's progress with the [`task` operation](#tag/Indices/operation/getTask) and this `taskID`. 
  @JsonKey(name: r'taskID')
  final int? taskID;



      /// Date and time when the object was updated, in RFC 3339 format.
  @JsonKey(name: r'updatedAt')
  final String? updatedAt;



      /// Unique record identifier.
  @JsonKey(name: r'objectID')
  final String? objectID;



  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdatedAtWithObjectIdResponse &&
     other.taskID == taskID &&
     other.updatedAt == updatedAt &&
     other.objectID == objectID
    ;

  @override
  int get hashCode =>
    taskID.hashCode +
    updatedAt.hashCode +
    objectID.hashCode
    ;

  factory UpdatedAtWithObjectIdResponse.fromJson(Map<String, dynamic> json) => _$UpdatedAtWithObjectIdResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatedAtWithObjectIdResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


