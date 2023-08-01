// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import 'package:algolia_client_core/algolia_client_core.dart';
import 'package:algolia_client_recommend/src/deserialize.dart';
import 'package:algolia_client_recommend/src/version.dart';

import 'package:algolia_client_recommend/src/model/deleted_at_response.dart';
import 'package:algolia_client_recommend/src/model/get_recommend_task_response.dart';
import 'package:algolia_client_recommend/src/model/get_recommendations_params.dart';
import 'package:algolia_client_recommend/src/model/get_recommendations_response.dart';
import 'package:algolia_client_recommend/src/model/recommend_models.dart';
import 'package:algolia_client_recommend/src/model/rule_response.dart';
import 'package:algolia_client_recommend/src/model/search_recommend_rules_params.dart';
import 'package:algolia_client_recommend/src/model/search_recommend_rules_response.dart';

final class RecommendClient implements ApiClient {
  @override
  final String apiKey;

  @override
  final String appId;

  @override
  final ClientOptions options;

  final RetryStrategy _retryStrategy;

  RecommendClient({
    required this.appId,
    required this.apiKey,
    this.options = const ClientOptions(),
  }) : _retryStrategy = RetryStrategy.create(
          segment: AgentSegment(value: "Recommend", version: packageVersion),
          appId: appId,
          apiKey: apiKey,
          options: options,
          defaultHosts: () =>
              [
                Host(url: '$appId-dsn.algolia.net', callType: CallType.read),
                Host(url: '$appId.algolia.net', callType: CallType.write),
              ] +
              ([
                Host(url: '$appId-1.algolianet.com'),
                Host(url: '$appId-2.algolianet.com'),
                Host(url: '$appId-3.algolianet.com'),
              ]..shuffle()),
        ) {
    assert(appId.isNotEmpty, '`appId` is missing.');
    assert(apiKey.isNotEmpty, '`apiKey` is missing.');
  }

  /// Send requests to the Algolia REST API.
  /// This method allow you to send requests to the Algolia REST API.
  ///
  /// Parameters:
  /// * [path] Path of the endpoint, anything after \"/1\" must be specified.
  /// * [parameters] Query parameters to apply to the current query.
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
      path: r'/1{path}'.replaceAll('{' r'path' '}', path),
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

  /// Delete a Recommend rule.
  /// Delete a [Recommend rule](https://www.algolia.com/doc/guides/algolia-recommend/how-to/rules/).
  ///
  /// Parameters:
  /// * [indexName] Index on which to perform the request.
  /// * [model] [Recommend models](https://www.algolia.com/doc/guides/algolia-recommend/overview/#recommend-models).
  /// * [objectID] Unique record (object) identifier.
  /// * [requestOptions] additional request configuration.
  Future<DeletedAtResponse> deleteRecommendRule({
    required String indexName,
    required RecommendModels model,
    required String objectID,
    RequestOptions? requestOptions,
  }) async {
    assert(
      indexName.isNotEmpty,
      'Parameter `indexName` is required when calling `deleteRecommendRule`.',
    );
    assert(
      objectID.isNotEmpty,
      'Parameter `objectID` is required when calling `deleteRecommendRule`.',
    );
    final request = ApiRequest(
      method: RequestMethod.delete,
      path: r'/1/indexes/{indexName}/{model}/recommend/rules/{objectID}'
          .replaceAll(
              '{' r'indexName' '}', Uri.encodeComponent(indexName.toString()))
          .replaceAll('{' r'model' '}', Uri.encodeComponent(model.toString()))
          .replaceAll(
              '{' r'objectID' '}', Uri.encodeComponent(objectID.toString())),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<DeletedAtResponse, DeletedAtResponse>(
      response,
      'DeletedAtResponse',
      growable: true,
    );
  }

  /// Send requests to the Algolia REST API.
  /// This method allow you to send requests to the Algolia REST API.
  ///
  /// Parameters:
  /// * [path] Path of the endpoint, anything after \"/1\" must be specified.
  /// * [parameters] Query parameters to apply to the current query.
  /// * [requestOptions] additional request configuration.
  Future<Object> get({
    required String path,
    Map<String, Object>? parameters,
    RequestOptions? requestOptions,
  }) async {
    assert(
      path.isNotEmpty,
      'Parameter `path` is required when calling `get`.',
    );
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1{path}'.replaceAll('{' r'path' '}', path),
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

  /// Get a Recommend rule.
  /// Return a [Recommend rule](https://www.algolia.com/doc/guides/algolia-recommend/how-to/rules/).
  ///
  /// Parameters:
  /// * [indexName] Index on which to perform the request.
  /// * [model] [Recommend models](https://www.algolia.com/doc/guides/algolia-recommend/overview/#recommend-models).
  /// * [objectID] Unique record (object) identifier.
  /// * [requestOptions] additional request configuration.
  Future<RuleResponse> getRecommendRule({
    required String indexName,
    required RecommendModels model,
    required String objectID,
    RequestOptions? requestOptions,
  }) async {
    assert(
      indexName.isNotEmpty,
      'Parameter `indexName` is required when calling `getRecommendRule`.',
    );
    assert(
      objectID.isNotEmpty,
      'Parameter `objectID` is required when calling `getRecommendRule`.',
    );
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/indexes/{indexName}/{model}/recommend/rules/{objectID}'
          .replaceAll(
              '{' r'indexName' '}', Uri.encodeComponent(indexName.toString()))
          .replaceAll('{' r'model' '}', Uri.encodeComponent(model.toString()))
          .replaceAll(
              '{' r'objectID' '}', Uri.encodeComponent(objectID.toString())),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<RuleResponse, RuleResponse>(
      response,
      'RuleResponse',
      growable: true,
    );
  }

  /// Get a Recommend task's status.
  /// Some operations, such as deleting a Recommend rule, will respond with a `taskID` value. Use this value here to check the status of that task.
  ///
  /// Parameters:
  /// * [indexName] Index on which to perform the request.
  /// * [model] [Recommend models](https://www.algolia.com/doc/guides/algolia-recommend/overview/#recommend-models).
  /// * [taskID] Unique identifier of a task. Numeric value (up to 64bits).
  /// * [requestOptions] additional request configuration.
  Future<GetRecommendTaskResponse> getRecommendStatus({
    required String indexName,
    required RecommendModels model,
    required int taskID,
    RequestOptions? requestOptions,
  }) async {
    assert(
      indexName.isNotEmpty,
      'Parameter `indexName` is required when calling `getRecommendStatus`.',
    );
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/indexes/{indexName}/{model}/task/{taskID}'
          .replaceAll(
              '{' r'indexName' '}', Uri.encodeComponent(indexName.toString()))
          .replaceAll('{' r'model' '}', Uri.encodeComponent(model.toString()))
          .replaceAll(
              '{' r'taskID' '}', Uri.encodeComponent(taskID.toString())),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<GetRecommendTaskResponse, GetRecommendTaskResponse>(
      response,
      'GetRecommendTaskResponse',
      growable: true,
    );
  }

  /// Get recommendations and trending items.
  /// Returns results from either recommendation or trending models:    - **Recommendations** are provided by the [Related Products](https://www.algolia.com/doc/guides/algolia-recommend/overview/#related-products-and-related-content) and [Frequently Bought Together](https://www.algolia.com/doc/guides/algolia-recommend/overview/#frequently-bought-together) models   - **Trending** models are [Trending Items and Trending Facet Values](https://www.algolia.com/doc/guides/algolia-recommend/overview/#trending-items-and-trending-facet-values).
  ///
  /// Parameters:
  /// * [getRecommendationsParams]
  /// * [requestOptions] additional request configuration.
  Future<GetRecommendationsResponse> getRecommendations({
    required GetRecommendationsParams getRecommendationsParams,
    RequestOptions? requestOptions,
  }) async {
    final request = ApiRequest(
      method: RequestMethod.post,
      path: r'/1/indexes/*/recommendations',
      isRead: true,
      body: getRecommendationsParams.toJson(),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<GetRecommendationsResponse, GetRecommendationsResponse>(
      response,
      'GetRecommendationsResponse',
      growable: true,
    );
  }

  /// Send requests to the Algolia REST API.
  /// This method allow you to send requests to the Algolia REST API.
  ///
  /// Parameters:
  /// * [path] Path of the endpoint, anything after \"/1\" must be specified.
  /// * [parameters] Query parameters to apply to the current query.
  /// * [body] Parameters to send with the custom request.
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
      path: r'/1{path}'.replaceAll('{' r'path' '}', path),
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

  /// Send requests to the Algolia REST API.
  /// This method allow you to send requests to the Algolia REST API.
  ///
  /// Parameters:
  /// * [path] Path of the endpoint, anything after \"/1\" must be specified.
  /// * [parameters] Query parameters to apply to the current query.
  /// * [body] Parameters to send with the custom request.
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
      path: r'/1{path}'.replaceAll('{' r'path' '}', path),
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

  /// List Recommend rules.
  /// List [Recommend rules](https://www.algolia.com/doc/guides/algolia-recommend/how-to/rules/).
  ///
  /// Parameters:
  /// * [indexName] Index on which to perform the request.
  /// * [model] [Recommend models](https://www.algolia.com/doc/guides/algolia-recommend/overview/#recommend-models).
  /// * [searchRecommendRulesParams]
  /// * [requestOptions] additional request configuration.
  Future<SearchRecommendRulesResponse> searchRecommendRules({
    required String indexName,
    required RecommendModels model,
    SearchRecommendRulesParams? searchRecommendRulesParams,
    RequestOptions? requestOptions,
  }) async {
    assert(
      indexName.isNotEmpty,
      'Parameter `indexName` is required when calling `searchRecommendRules`.',
    );
    final request = ApiRequest(
      method: RequestMethod.post,
      path: r'/1/indexes/{indexName}/{model}/recommend/rules/search'
          .replaceAll(
              '{' r'indexName' '}', Uri.encodeComponent(indexName.toString()))
          .replaceAll('{' r'model' '}', Uri.encodeComponent(model.toString())),
      isRead: true,
      body: searchRecommendRulesParams?.toJson(),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<SearchRecommendRulesResponse,
        SearchRecommendRulesResponse>(
      response,
      'SearchRecommendRulesResponse',
      growable: true,
    );
  }

  @override
  void dispose() => _retryStrategy.dispose();
}
