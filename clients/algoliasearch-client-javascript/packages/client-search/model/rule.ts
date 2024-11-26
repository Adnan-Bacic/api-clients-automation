// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import type { Condition } from './condition';
import type { Consequence } from './consequence';
import type { TimeRange } from './timeRange';

/**
 * Rule object.
 */
export type Rule = {
  /**
   * Unique identifier of a rule object.
   */
  objectID: string;

  /**
   * Conditions that trigger a rule.  Some consequences require specific conditions or don\'t require any condition. For more information, see [Conditions](https://www.algolia.com/doc/guides/managing-results/rules/rules-overview/#conditions).
   */
  conditions?: Array<Condition>;

  consequence: Consequence;

  /**
   * Description of the rule\'s purpose to help you distinguish between different rules.
   */
  description?: string;

  /**
   * Whether the rule is active.
   */
  enabled?: boolean;

  /**
   * Time periods when the rule is active.
   */
  validity?: Array<TimeRange>;
};
