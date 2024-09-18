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

namespace Algolia.Search.Models.Ingestion;

/// <summary>
/// Property by which to sort the list of task runs.
/// </summary>
/// <value>Property by which to sort the list of task runs.</value>
[JsonConverter(typeof(Serializer.JsonStringEnumConverter<RunSortKeys>))]
public enum RunSortKeys
{
  /// <summary>
  /// Enum Status for value: status
  /// </summary>
  [JsonPropertyName("status")]
  Status = 1,

  /// <summary>
  /// Enum UpdatedAt for value: updatedAt
  /// </summary>
  [JsonPropertyName("updatedAt")]
  UpdatedAt = 2,

  /// <summary>
  /// Enum CreatedAt for value: createdAt
  /// </summary>
  [JsonPropertyName("createdAt")]
  CreatedAt = 3
}

