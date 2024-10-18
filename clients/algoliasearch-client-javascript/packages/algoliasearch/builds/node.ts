// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import type { ClientOptions } from '@algolia/client-common';
import type { SearchClient } from '@algolia/client-search';
import { searchClient } from '@algolia/client-search';

import type { AbtestingClient } from '@algolia/client-abtesting';
import { abtestingClient } from '@algolia/client-abtesting';
import type { AnalyticsClient } from '@algolia/client-analytics';
import { analyticsClient } from '@algolia/client-analytics';
import type { InsightsClient } from '@algolia/client-insights';
import { insightsClient } from '@algolia/client-insights';
import type { PersonalizationClient } from '@algolia/client-personalization';
import { personalizationClient } from '@algolia/client-personalization';
import type { QuerySuggestionsClient } from '@algolia/client-query-suggestions';
import { querySuggestionsClient } from '@algolia/client-query-suggestions';
import type { IngestionClient } from '@algolia/ingestion';
import { ingestionClient } from '@algolia/ingestion';
import type { MonitoringClient } from '@algolia/monitoring';
import { monitoringClient } from '@algolia/monitoring';
import type { RecommendClient } from '@algolia/recommend';
import { recommendClient } from '@algolia/recommend';

import type {
  AbtestingRegionOptions,
  AnalyticsRegionOptions,
  IngestionRegionOptions,
  InitClientOptions,
  InsightsRegionOptions,
  PersonalizationRegionOptions,
  QuerySuggestionsRegionOptions,
} from './models';

export * from './models';

export type Algoliasearch = SearchClient & {
  initAbtesting: (initOptions: InitClientOptions & AbtestingRegionOptions) => AbtestingClient;
  initAnalytics: (initOptions: InitClientOptions & AnalyticsRegionOptions) => AnalyticsClient;
  initIngestion: (initOptions: InitClientOptions & IngestionRegionOptions) => IngestionClient;
  initInsights: (initOptions: InitClientOptions & InsightsRegionOptions) => InsightsClient;
  initMonitoring: (initOptions: InitClientOptions) => MonitoringClient;
  initPersonalization: (initOptions: InitClientOptions & PersonalizationRegionOptions) => PersonalizationClient;
  initQuerySuggestions: (initOptions: InitClientOptions & QuerySuggestionsRegionOptions) => QuerySuggestionsClient;
  initRecommend: (initOptions: InitClientOptions) => RecommendClient;
};

export function algoliasearch(appId: string, apiKey: string, options?: ClientOptions): Algoliasearch {
  if (!appId || typeof appId !== 'string') {
    throw new Error('`appId` is missing.');
  }

  if (!apiKey || typeof apiKey !== 'string') {
    throw new Error('`apiKey` is missing.');
  }

  const client = searchClient(appId, apiKey, options);

  return {
    ...client,

    /**
     * Get the value of the `algoliaAgent`, used by our libraries internally and telemetry system.
     */
    get _ua(): string {
      return client.transporter.algoliaAgent.value;
    },

    initAbtesting: (initOptions: InitClientOptions & AbtestingRegionOptions): AbtestingClient => {
      return abtestingClient(
        initOptions.appId || appId,
        initOptions.apiKey || apiKey,
        initOptions.region,
        initOptions.options,
      );
    },

    initAnalytics: (initOptions: InitClientOptions & AnalyticsRegionOptions): AnalyticsClient => {
      return analyticsClient(
        initOptions.appId || appId,
        initOptions.apiKey || apiKey,
        initOptions.region,
        initOptions.options,
      );
    },

    initIngestion: (initOptions: InitClientOptions & IngestionRegionOptions): IngestionClient => {
      return ingestionClient(
        initOptions.appId || appId,
        initOptions.apiKey || apiKey,
        initOptions.region,
        initOptions.options,
      );
    },

    initInsights: (initOptions: InitClientOptions & InsightsRegionOptions): InsightsClient => {
      return insightsClient(
        initOptions.appId || appId,
        initOptions.apiKey || apiKey,
        initOptions.region,
        initOptions.options,
      );
    },

    initMonitoring: (initOptions: InitClientOptions): MonitoringClient => {
      return monitoringClient(initOptions.appId || appId, initOptions.apiKey || apiKey, initOptions.options);
    },

    initPersonalization: (initOptions: InitClientOptions & PersonalizationRegionOptions): PersonalizationClient => {
      return personalizationClient(
        initOptions.appId || appId,
        initOptions.apiKey || apiKey,
        initOptions.region,
        initOptions.options,
      );
    },

    initQuerySuggestions: (initOptions: InitClientOptions & QuerySuggestionsRegionOptions): QuerySuggestionsClient => {
      return querySuggestionsClient(
        initOptions.appId || appId,
        initOptions.apiKey || apiKey,
        initOptions.region,
        initOptions.options,
      );
    },

    initRecommend: (initOptions: InitClientOptions): RecommendClient => {
      return recommendClient(initOptions.appId || appId, initOptions.apiKey || apiKey, initOptions.options);
    },
  };
}
