// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import 'package:algolia_client_core/algolia_client_core.dart';
import 'package:algolia_client_personalization/src/deserialize.dart';
import 'package:algolia_client_personalization/src/version.dart';

import 'package:algolia_client_personalization/src/model/delete_user_profile_response.dart';
import 'package:algolia_client_personalization/src/model/get_user_token_response.dart';
import 'package:algolia_client_personalization/src/model/personalization_strategy_params.dart';
import 'package:algolia_client_personalization/src/model/set_personalization_strategy_response.dart';

final class PersonalizationClient implements ApiClient {
  @override
  final String apiKey;

  @override
  final String appId;

  @override
  final ClientOptions options;

  final String region;

  final RetryStrategy _retryStrategy;

  PersonalizationClient({
    required this.appId,
    required this.apiKey,
    this.options = const ClientOptions(),
    required this.region,
  }) : _retryStrategy = RetryStrategy.create(
            segment:
                AgentSegment(value: "Personalization", version: packageVersion),
            appId: appId,
            apiKey: apiKey,
            options: options,
            defaultHosts: () {
              final allowedRegions = ['eu', 'us'];
              assert(
                allowedRegions.contains(region),
                '`region` is required and must be one of the following: ${allowedRegions.join(', ')}',
              );
              final url = 'personalization.{region}.algolia.com'
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

  /// Delete a user profile.
  /// Delete the user profile and all its associated data.  Returns, as part of the response, a date until which the data can safely be considered as deleted for the given user. This means if you send events for the given user before this date, they will be ignored. Any data received after the deletedUntil date will start building a new user profile.  It might take a couple hours for the deletion request to be fully processed.
  ///
  /// Parameters:
  /// * [userToken] userToken representing the user for which to fetch the Personalization profile.
  /// * [requestOptions] additional request configuration.
  Future<DeleteUserProfileResponse> deleteUserProfile({
    required String userToken,
    RequestOptions? requestOptions,
  }) async {
    assert(
      userToken.isNotEmpty,
      'Parameter `userToken` is required when calling `deleteUserProfile`.',
    );
    final request = ApiRequest(
      method: RequestMethod.delete,
      path: r'/1/profiles/{userToken}'.replaceAll(
          '{' r'userToken' '}', Uri.encodeComponent(userToken.toString())),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<DeleteUserProfileResponse, DeleteUserProfileResponse>(
      response,
      'DeleteUserProfileResponse',
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

  /// Get the current strategy.
  /// The strategy contains information on the events and facets that impact user profiles and personalized search results.
  ///
  /// Parameters:
  /// * [requestOptions] additional request configuration.
  Future<PersonalizationStrategyParams> getPersonalizationStrategy({
    RequestOptions? requestOptions,
  }) async {
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/strategies/personalization',
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<PersonalizationStrategyParams,
        PersonalizationStrategyParams>(
      response,
      'PersonalizationStrategyParams',
      growable: true,
    );
  }

  /// Get a user profile.
  /// Get the user profile built from Personalization strategy.  The profile is structured by facet name used in the strategy. Each facet value is mapped to its score. Each score represents the user affinity for a specific facet value given the userToken past events and the Personalization strategy defined. Scores are bounded to 20. The last processed event timestamp is provided using the ISO 8601 format for debugging purposes.
  ///
  /// Parameters:
  /// * [userToken] userToken representing the user for which to fetch the Personalization profile.
  /// * [requestOptions] additional request configuration.
  Future<GetUserTokenResponse> getUserTokenProfile({
    required String userToken,
    RequestOptions? requestOptions,
  }) async {
    assert(
      userToken.isNotEmpty,
      'Parameter `userToken` is required when calling `getUserTokenProfile`.',
    );
    final request = ApiRequest(
      method: RequestMethod.get,
      path: r'/1/profiles/personalization/{userToken}'.replaceAll(
          '{' r'userToken' '}', Uri.encodeComponent(userToken.toString())),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<GetUserTokenResponse, GetUserTokenResponse>(
      response,
      'GetUserTokenResponse',
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

  /// Set a new strategy.
  /// A strategy defines the events and facets that impact user profiles and personalized search results.
  ///
  /// Parameters:
  /// * [personalizationStrategyParams]
  /// * [requestOptions] additional request configuration.
  Future<SetPersonalizationStrategyResponse> setPersonalizationStrategy({
    required PersonalizationStrategyParams personalizationStrategyParams,
    RequestOptions? requestOptions,
  }) async {
    final request = ApiRequest(
      method: RequestMethod.post,
      path: r'/1/strategies/personalization',
      body: personalizationStrategyParams.toJson(),
    );
    final response = await _retryStrategy.execute(
      request: request,
      options: requestOptions,
    );
    return deserialize<SetPersonalizationStrategyResponse,
        SetPersonalizationStrategyResponse>(
      response,
      'SetPersonalizationStrategyResponse',
      growable: true,
    );
  }

  @override
  void dispose() => _retryStrategy.dispose();
}
