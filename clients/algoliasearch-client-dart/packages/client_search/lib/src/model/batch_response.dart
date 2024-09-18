// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'batch_response.g.dart';

@JsonSerializable()
final class BatchResponse{
  /// Returns a new [BatchResponse] instance.
  const BatchResponse({
    required this.taskID,
    required this.objectIDs,
  });

      /// Unique identifier of a task.  A successful API response means that a task was added to a queue. It might not run immediately. You can check the task's progress with the [`task` operation](#tag/Indices/operation/getTask) and this `taskID`. 
  @JsonKey(name: r'taskID')
  final int taskID;



      /// Unique record identifiers.
  @JsonKey(name: r'objectIDs')
  final List<String> objectIDs;



  @override
  bool operator ==(Object other) => identical(this, other) || other is BatchResponse &&
     other.taskID == taskID &&
     other.objectIDs == objectIDs
    ;

  @override
  int get hashCode =>
    taskID.hashCode +
    objectIDs.hashCode
    ;

  factory BatchResponse.fromJson(Map<String, dynamic> json) => _$BatchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BatchResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


