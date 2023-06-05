// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import 'package:algolia_client_core/algolia_client_core.dart';
import 'package:algolia_insights/src/deserialize.dart';
import 'package:algolia_insights/src/version.dart';

import 'package:algolia_insights/src/model/insight_events.dart';
import 'package:algolia_insights/src/model/push_events_response.dart';

final class InsightsClient implements ApiClient {
  @override
  final String apiKey;

  @override
  final String appId;

  @override
  final ClientOptions options;

  final RetryStrategy _retryStrategy;

  InsightsClient({
    required this.appId,
    required this.apiKey,
    this.options = const ClientOptions(),
    String? region,
  }) : _retryStrategy = RetryStrategy.create(
            segment: AgentSegment(value: "Insights", version: packageVersion),
            appId: appId,
            apiKey: apiKey,
            options: options,
            defaultHosts: () {
              final allowedRegions = ['de', 'us'];
              assert(
                region == null || allowedRegions.contains(region),
                '`region` must be one of the following: ${allowedRegions.join(',')}',
              );
              final url = region == null
                  ? 'insights.algolia.io'
                  : 'insights.{region}.algolia.io'
                      .replaceAll('{region}', region);
              return [Host(url: url)];
            }) {
    assert(appId.isNotEmpty, '`appId` is missing.');
    assert(apiKey.isNotEmpty, '`apiKey` is missing.');
  }

  /// Send requests to the Algolia REST API.
  /// This method allow you to send requests to the Algolia REST API.
  ///
  /// Parameters:
  /// * [path] - The path of the API endpoint to target, anything after the /1 needs to be specified.
  /// * [parameters] - Query parameters to be applied to the current query.
  /// * [requestOptions] additional request configuration.
  Future<Object> callGet({
    required String path,
    Map<String, Object>? parameters,
    RequestOptions? requestOptions,
  }) async {
    assert(
      path.isNotEmpty,
      'Parameter `path` is required when calling `callGet`.',
    );
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1{path}'
          .replaceAll('{' r'path' '}', Uri.encodeComponent(path.toString())),
      queryParams: {
        ...?parameters,
      },
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<Object, Object>(
      response,
      'Object',
      growable: true,
    );
  }

  /// Send requests to the Algolia REST API.
  /// This method allow you to send requests to the Algolia REST API.
  ///
  /// Parameters:
  /// * [path] - The path of the API endpoint to target, anything after the /1 needs to be specified.
  /// * [parameters] - Query parameters to be applied to the current query.
  /// * [requestOptions] additional request configuration.
  Future<Object> del({
    required String path,
    Map<String, Object>? parameters,
    RequestOptions? requestOptions,
  }) async {
    assert(
      path.isNotEmpty,
      'Parameter `path` is required when calling `del`.',
    );
    final request = ApiRequest(
      method: RequestMethod.delete,
      path: r'/1{path}'
          .replaceAll('{' r'path' '}', Uri.encodeComponent(path.toString())),
      queryParams: {
        ...?parameters,
      },
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<Object, Object>(
      response,
      'Object',
      growable: true,
    );
  }

  /// Send requests to the Algolia REST API.
  /// This method allow you to send requests to the Algolia REST API.
  ///
  /// Parameters:
  /// * [path] - The path of the API endpoint to target, anything after the /1 needs to be specified.
  /// * [parameters] - Query parameters to be applied to the current query.
  /// * [body] - The parameters to send with the custom request.
  /// * [requestOptions] additional request configuration.
  Future<Object> post({
    required String path,
    Map<String, Object>? parameters,
    Object? body,
    RequestOptions? requestOptions,
  }) async {
    assert(
      path.isNotEmpty,
      'Parameter `path` is required when calling `post`.',
    );
    final request = ApiRequest(
      method: RequestMethod.post,
      path: r'/1{path}'
          .replaceAll('{' r'path' '}', Uri.encodeComponent(path.toString())),
      queryParams: {
        ...?parameters,
      },
      body: body,
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<Object, Object>(
      response,
      'Object',
      growable: true,
    );
  }

  /// Push events.
  /// This command pushes an array of events.  An event is   - an action: `eventName`   - performed in a context: `eventType`   - at some point in time provided: `timestamp`   - by an end user: `userToken`   - on something: `index`   Notes:   - To be accepted, all events sent must be valid.   - The size of the body must be *less than 2 MB*.   - When an event is tied to an Algolia search, it must also provide a `queryID`. If that event is a `click`, their absolute `positions` should also be passed.   - We consider that an `index` provides access to 2 resources: objects and filters. An event can only interact with a single resource type, but not necessarily on a single item. As such an event will accept an array of `objectIDs` or `filters`.
  ///
  /// Parameters:
  /// * [insightEvents]
  /// * [requestOptions] additional request configuration.
  Future<PushEventsResponse> pushEvents({
    required InsightEvents insightEvents,
    RequestOptions? requestOptions,
  }) async {
    final request = ApiRequest(
      method: RequestMethod.post,
      path: r'/1/events',
      body: insightEvents.toJson(),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<PushEventsResponse, PushEventsResponse>(
      response,
      'PushEventsResponse',
      growable: true,
    );
  }

  /// Send requests to the Algolia REST API.
  /// This method allow you to send requests to the Algolia REST API.
  ///
  /// Parameters:
  /// * [path] - The path of the API endpoint to target, anything after the /1 needs to be specified.
  /// * [parameters] - Query parameters to be applied to the current query.
  /// * [body] - The parameters to send with the custom request.
  /// * [requestOptions] additional request configuration.
  Future<Object> put({
    required String path,
    Map<String, Object>? parameters,
    Object? body,
    RequestOptions? requestOptions,
  }) async {
    assert(
      path.isNotEmpty,
      'Parameter `path` is required when calling `put`.',
    );
    final request = ApiRequest(
      method: RequestMethod.put,
      path: r'/1{path}'
          .replaceAll('{' r'path' '}', Uri.encodeComponent(path.toString())),
      queryParams: {
        ...?parameters,
      },
      body: body,
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<Object, Object>(
      response,
      'Object',
      growable: true,
    );
  }

  @override
  void dispose() => _retryStrategy.dispose();
}
