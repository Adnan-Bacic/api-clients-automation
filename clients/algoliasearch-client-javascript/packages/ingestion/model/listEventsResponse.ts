// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

import type { Event } from './event';
import type { Pagination } from './pagination';
import type { Window } from './window';

export type ListEventsResponse = {
  events: Array<Event>;

  pagination: Pagination;

  window: Window;
};
