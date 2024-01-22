// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import {
  createAuth,
  createTransporter,
  getAlgoliaAgent,
} from '@algolia/client-common';
import type {
  CreateClientOptions,
  Headers,
  Host,
  Request,
  RequestOptions,
  QueryParameters,
} from '@algolia/client-common';

import type {
  CustomDeleteProps,
  CustomGetProps,
  CustomPostProps,
  CustomPutProps,
  GetClusterIncidentsProps,
  GetClusterStatusProps,
  GetIndexingTimeProps,
  GetLatencyProps,
  GetMetricsProps,
  GetReachabilityProps,
} from '../model/clientMethodProps';
import type { IncidentsResponse } from '../model/incidentsResponse';
import type { IndexingTimeResponse } from '../model/indexingTimeResponse';
import type { InfrastructureResponse } from '../model/infrastructureResponse';
import type { InventoryResponse } from '../model/inventoryResponse';
import type { LatencyResponse } from '../model/latencyResponse';
import type { StatusResponse } from '../model/statusResponse';

export const apiClientVersion = '1.0.0-alpha.25';

function getDefaultHosts(): Host[] {
  return [
    { url: 'status.algolia.com', accept: 'readWrite', protocol: 'https' },
  ];
}

// eslint-disable-next-line @typescript-eslint/explicit-function-return-type
export function createMonitoringClient({
  appId: appIdOption,
  apiKey: apiKeyOption,
  authMode,
  algoliaAgents,
  ...options
}: CreateClientOptions) {
  const auth = createAuth(appIdOption, apiKeyOption, authMode);
  const transporter = createTransporter({
    hosts: getDefaultHosts(),
    ...options,
    algoliaAgent: getAlgoliaAgent({
      algoliaAgents,
      client: 'Monitoring',
      version: apiClientVersion,
    }),
    baseHeaders: {
      'content-type': 'text/plain',
      ...auth.headers(),
      ...options.baseHeaders,
    },
    baseQueryParameters: {
      ...auth.queryParameters(),
      ...options.baseQueryParameters,
    },
  });

  return {
    transporter,

    /**
     * The `appId` currently in use.
     */
    appId: appIdOption,

    /**
     * Clears the cache of the transporter for the `requestsCache` and `responsesCache` properties.
     */
    clearCache(): Promise<void> {
      return Promise.all([
        transporter.requestsCache.clear(),
        transporter.responsesCache.clear(),
      ]).then(() => undefined);
    },

    /**
     * Get the value of the `algoliaAgent`, used by our libraries internally and telemetry system.
     */
    get _ua(): string {
      return transporter.algoliaAgent.value;
    },

    /**
     * Adds a `segment` to the `x-algolia-agent` sent with every requests.
     *
     * @param segment - The algolia agent (user-agent) segment to add.
     * @param version - The version of the agent.
     */
    addAlgoliaAgent(segment: string, version?: string): void {
      transporter.algoliaAgent.add({ segment, version });
    },

    /**
     * This method allow you to send requests to the Algolia REST API.
     *
     * @summary Send requests to the Algolia REST API.
     * @param customDelete - The customDelete object.
     * @param customDelete.path - Path of the endpoint, anything after \"/1\" must be specified.
     * @param customDelete.parameters - Query parameters to apply to the current query.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    customDelete(
      { path, parameters }: CustomDeleteProps,
      requestOptions?: RequestOptions
    ): Promise<Record<string, any>> {
      if (!path) {
        throw new Error(
          'Parameter `path` is required when calling `customDelete`.'
        );
      }

      const requestPath = '/1{path}'.replace('{path}', path);
      const headers: Headers = {};
      const queryParameters: QueryParameters = parameters ? parameters : {};

      const request: Request = {
        method: 'DELETE',
        path: requestPath,
        queryParameters,
        headers,
      };

      return transporter.request(request, requestOptions);
    },

    /**
     * This method allow you to send requests to the Algolia REST API.
     *
     * @summary Send requests to the Algolia REST API.
     * @param customGet - The customGet object.
     * @param customGet.path - Path of the endpoint, anything after \"/1\" must be specified.
     * @param customGet.parameters - Query parameters to apply to the current query.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    customGet(
      { path, parameters }: CustomGetProps,
      requestOptions?: RequestOptions
    ): Promise<Record<string, any>> {
      if (!path) {
        throw new Error(
          'Parameter `path` is required when calling `customGet`.'
        );
      }

      const requestPath = '/1{path}'.replace('{path}', path);
      const headers: Headers = {};
      const queryParameters: QueryParameters = parameters ? parameters : {};

      const request: Request = {
        method: 'GET',
        path: requestPath,
        queryParameters,
        headers,
      };

      return transporter.request(request, requestOptions);
    },

    /**
     * This method allow you to send requests to the Algolia REST API.
     *
     * @summary Send requests to the Algolia REST API.
     * @param customPost - The customPost object.
     * @param customPost.path - Path of the endpoint, anything after \"/1\" must be specified.
     * @param customPost.parameters - Query parameters to apply to the current query.
     * @param customPost.body - Parameters to send with the custom request.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    customPost(
      { path, parameters, body }: CustomPostProps,
      requestOptions?: RequestOptions
    ): Promise<Record<string, any>> {
      if (!path) {
        throw new Error(
          'Parameter `path` is required when calling `customPost`.'
        );
      }

      const requestPath = '/1{path}'.replace('{path}', path);
      const headers: Headers = {};
      const queryParameters: QueryParameters = parameters ? parameters : {};

      const request: Request = {
        method: 'POST',
        path: requestPath,
        queryParameters,
        headers,
        data: body ? body : {},
      };

      return transporter.request(request, requestOptions);
    },

    /**
     * This method allow you to send requests to the Algolia REST API.
     *
     * @summary Send requests to the Algolia REST API.
     * @param customPut - The customPut object.
     * @param customPut.path - Path of the endpoint, anything after \"/1\" must be specified.
     * @param customPut.parameters - Query parameters to apply to the current query.
     * @param customPut.body - Parameters to send with the custom request.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    customPut(
      { path, parameters, body }: CustomPutProps,
      requestOptions?: RequestOptions
    ): Promise<Record<string, any>> {
      if (!path) {
        throw new Error(
          'Parameter `path` is required when calling `customPut`.'
        );
      }

      const requestPath = '/1{path}'.replace('{path}', path);
      const headers: Headers = {};
      const queryParameters: QueryParameters = parameters ? parameters : {};

      const request: Request = {
        method: 'PUT',
        path: requestPath,
        queryParameters,
        headers,
        data: body ? body : {},
      };

      return transporter.request(request, requestOptions);
    },

    /**
     * List known incidents for selected clusters.
     *
     * @summary List incidents for selected clusters.
     * @param getClusterIncidents - The getClusterIncidents object.
     * @param getClusterIncidents.clusters - Subset of clusters, separated by comma.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    getClusterIncidents(
      { clusters }: GetClusterIncidentsProps,
      requestOptions?: RequestOptions
    ): Promise<IncidentsResponse> {
      if (!clusters) {
        throw new Error(
          'Parameter `clusters` is required when calling `getClusterIncidents`.'
        );
      }

      const requestPath = '/1/incidents/{clusters}'.replace(
        '{clusters}',
        encodeURIComponent(clusters)
      );
      const headers: Headers = {};
      const queryParameters: QueryParameters = {};

      const request: Request = {
        method: 'GET',
        path: requestPath,
        queryParameters,
        headers,
      };

      return transporter.request(request, requestOptions);
    },

    /**
     * Report whether a cluster is operational.
     *
     * @summary List statuses of selected clusters.
     * @param getClusterStatus - The getClusterStatus object.
     * @param getClusterStatus.clusters - Subset of clusters, separated by comma.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    getClusterStatus(
      { clusters }: GetClusterStatusProps,
      requestOptions?: RequestOptions
    ): Promise<StatusResponse> {
      if (!clusters) {
        throw new Error(
          'Parameter `clusters` is required when calling `getClusterStatus`.'
        );
      }

      const requestPath = '/1/status/{clusters}'.replace(
        '{clusters}',
        encodeURIComponent(clusters)
      );
      const headers: Headers = {};
      const queryParameters: QueryParameters = {};

      const request: Request = {
        method: 'GET',
        path: requestPath,
        queryParameters,
        headers,
      };

      return transporter.request(request, requestOptions);
    },

    /**
     * List known incidents for all clusters.
     *
     * @summary List incidents.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    getIncidents(requestOptions?: RequestOptions): Promise<IncidentsResponse> {
      const requestPath = '/1/incidents';
      const headers: Headers = {};
      const queryParameters: QueryParameters = {};

      const request: Request = {
        method: 'GET',
        path: requestPath,
        queryParameters,
        headers,
      };

      return transporter.request(request, requestOptions);
    },

    /**
     * List the average times for indexing operations for selected clusters.
     *
     * @summary Get indexing times.
     * @param getIndexingTime - The getIndexingTime object.
     * @param getIndexingTime.clusters - Subset of clusters, separated by comma.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    getIndexingTime(
      { clusters }: GetIndexingTimeProps,
      requestOptions?: RequestOptions
    ): Promise<IndexingTimeResponse> {
      if (!clusters) {
        throw new Error(
          'Parameter `clusters` is required when calling `getIndexingTime`.'
        );
      }

      const requestPath = '/1/indexing/{clusters}'.replace(
        '{clusters}',
        encodeURIComponent(clusters)
      );
      const headers: Headers = {};
      const queryParameters: QueryParameters = {};

      const request: Request = {
        method: 'GET',
        path: requestPath,
        queryParameters,
        headers,
      };

      return transporter.request(request, requestOptions);
    },

    /**
     * List the servers belonging to clusters.  The response depends on whether you authenticate your API request:  - With authentication, the response lists the servers assigned to your Algolia application\'s cluster.  - Without authentication, the response lists the servers for all Algolia clusters.
     *
     * @summary List servers.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    getInventory(requestOptions?: RequestOptions): Promise<InventoryResponse> {
      const requestPath = '/1/inventory/servers';
      const headers: Headers = {};
      const queryParameters: QueryParameters = {};

      const request: Request = {
        method: 'GET',
        path: requestPath,
        queryParameters,
        headers,
      };

      return transporter.request(request, requestOptions);
    },

    /**
     * List the average latency for search requests for selected clusters.
     *
     * @summary Get search latency times.
     * @param getLatency - The getLatency object.
     * @param getLatency.clusters - Subset of clusters, separated by comma.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    getLatency(
      { clusters }: GetLatencyProps,
      requestOptions?: RequestOptions
    ): Promise<LatencyResponse> {
      if (!clusters) {
        throw new Error(
          'Parameter `clusters` is required when calling `getLatency`.'
        );
      }

      const requestPath = '/1/latency/{clusters}'.replace(
        '{clusters}',
        encodeURIComponent(clusters)
      );
      const headers: Headers = {};
      const queryParameters: QueryParameters = {};

      const request: Request = {
        method: 'GET',
        path: requestPath,
        queryParameters,
        headers,
      };

      return transporter.request(request, requestOptions);
    },

    /**
     * Report the aggregate value of a metric for a selected period of time.
     *
     * @summary Get metrics for a given period.
     * @param getMetrics - The getMetrics object.
     * @param getMetrics.metric - Metric to report.  For more information about the individual metrics, see the response. To include all metrics, use `*` as the parameter.
     * @param getMetrics.period - Period over which to aggregate the metrics:  - `minute`. Aggregate the last minute. 1 data point per 10 seconds. - `hour`. Aggregate the last hour. 1 data point per minute. - `day`. Aggregate the last day. 1 data point per 10 minutes. - `week`. Aggregate the last week. 1 data point per hour. - `month`. Aggregate the last month. 1 data point per day.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    getMetrics(
      { metric, period }: GetMetricsProps,
      requestOptions?: RequestOptions
    ): Promise<InfrastructureResponse> {
      if (!metric) {
        throw new Error(
          'Parameter `metric` is required when calling `getMetrics`.'
        );
      }

      if (!period) {
        throw new Error(
          'Parameter `period` is required when calling `getMetrics`.'
        );
      }

      const requestPath = '/1/infrastructure/{metric}/period/{period}'
        .replace('{metric}', encodeURIComponent(metric))
        .replace('{period}', encodeURIComponent(period));
      const headers: Headers = {};
      const queryParameters: QueryParameters = {};

      const request: Request = {
        method: 'GET',
        path: requestPath,
        queryParameters,
        headers,
      };

      return transporter.request(request, requestOptions);
    },

    /**
     * Test whether clusters are reachable or not.
     *
     * @summary Test the reachability of clusters.
     * @param getReachability - The getReachability object.
     * @param getReachability.clusters - Subset of clusters, separated by comma.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    getReachability(
      { clusters }: GetReachabilityProps,
      requestOptions?: RequestOptions
    ): Promise<Record<string, Record<string, boolean>>> {
      if (!clusters) {
        throw new Error(
          'Parameter `clusters` is required when calling `getReachability`.'
        );
      }

      const requestPath = '/1/reachability/{clusters}/probes'.replace(
        '{clusters}',
        encodeURIComponent(clusters)
      );
      const headers: Headers = {};
      const queryParameters: QueryParameters = {};

      const request: Request = {
        method: 'GET',
        path: requestPath,
        queryParameters,
        headers,
      };

      return transporter.request(request, requestOptions);
    },

    /**
     * Report whether clusters are operational.  The response depends on whether you authenticate your API request.  - With authentication, the response includes the status of the cluster assigned to your Algolia application.  - Without authentication, the response lists the statuses of all public Algolia clusters.
     *
     * @summary List cluster statuses.
     * @param requestOptions - The requestOptions to send along with the query, they will be merged with the transporter requestOptions.
     */
    getStatus(requestOptions?: RequestOptions): Promise<StatusResponse> {
      const requestPath = '/1/status';
      const headers: Headers = {};
      const queryParameters: QueryParameters = {};

      const request: Request = {
        method: 'GET',
        path: requestPath,
        queryParameters,
        headers,
      };

      return transporter.request(request, requestOptions);
    },
  };
}

/**
 * The client type.
 */
export type MonitoringClient = ReturnType<typeof createMonitoringClient>;
