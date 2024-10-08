// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import type { CurrencyCode } from './currencyCode';

export type TopHitWithRevenueAnalytics = {
  /**
   * Object ID of a record that\'s returned as a search result.
   */
  hit: string;

  /**
   * Number of occurrences.
   */
  count: number;

  /**
   * Click-through rate, calculated as number of tracked searches with at least one click event divided by the number of tracked searches. If null, Algolia didn\'t receive any search requests with `clickAnalytics` set to true.
   */
  clickThroughRate: number | null;

  /**
   * Conversion rate, calculated as number of tracked searches with at least one conversion event divided by the number of tracked searches. If null, Algolia didn\'t receive any search requests with `clickAnalytics` set to true.
   */
  conversionRate: number | null;

  /**
   * Number of tracked searches. Tracked searches are search requests where the `clickAnalytics` parameter is true.
   */
  trackedHitCount: number;

  /**
   * Number of clicks associated with this search.
   */
  clickCount: number;

  /**
   * Number of conversions from this search.
   */
  conversionCount: number;

  /**
   * Add-to-cart rate, calculated as number of tracked searches with at least one add-to-cart event divided by the number of tracked searches. If null, Algolia didn\'t receive any search requests with `clickAnalytics` set to true.
   */
  addToCartRate: number | null;

  /**
   * Number of add-to-cart events from this search.
   */
  addToCartCount: number;

  /**
   * Purchase rate, calculated as number of tracked searches with at least one purchase event divided by the number of tracked searches. If null, Algolia didn\'t receive any search requests with `clickAnalytics` set to true.
   */
  purchaseRate: number | null;

  /**
   * Number of purchase events from this search.
   */
  purchaseCount: number;

  /**
   * Revenue associated with this search, broken-down by currencies.
   */
  currencies: { [key: string]: CurrencyCode };
};
