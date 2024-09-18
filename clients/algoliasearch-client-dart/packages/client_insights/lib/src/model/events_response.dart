// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
// ignore_for_file: unused_element

import 'package:json_annotation/json_annotation.dart';

part 'events_response.g.dart';

@JsonSerializable()
final class EventsResponse{
  /// Returns a new [EventsResponse] instance.
  const EventsResponse({
     this.message,
     this.status,
  });

      /// Details about the response, such as error messages.
  @JsonKey(name: r'message')
  final String? message;



      /// The HTTP status code of the response.
  @JsonKey(name: r'status')
  final int? status;



  @override
  bool operator ==(Object other) => identical(this, other) || other is EventsResponse &&
     other.message == message &&
     other.status == status
    ;

  @override
  int get hashCode =>
    message.hashCode +
    status.hashCode
    ;

  factory EventsResponse.fromJson(Map<String, dynamic> json) => _$EventsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


