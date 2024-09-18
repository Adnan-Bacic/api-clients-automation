//
// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
//
using System;
using System.Text;
using System.Linq;
using System.Text.Json.Serialization;
using System.Collections.Generic;
using Algolia.Search.Serializer;
using System.Text.Json;

namespace Algolia.Search.Models.Search;

/// <summary>
/// - `default`: perform a search query - `facet` [searches for facet values](https://www.algolia.com/doc/guides/managing-results/refine-results/faceting/#search-for-facet-values). 
/// </summary>
/// <value>- `default`: perform a search query - `facet` [searches for facet values](https://www.algolia.com/doc/guides/managing-results/refine-results/faceting/#search-for-facet-values). </value>
[JsonConverter(typeof(Serializer.JsonStringEnumConverter<SearchTypeDefault>))]
public enum SearchTypeDefault
{
  /// <summary>
  /// Enum Default for value: default
  /// </summary>
  [JsonPropertyName("default")]
  Default = 1
}

