/** Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT. */
package com.algolia.client.model.monitoring

import kotlinx.serialization.*

@Serializable
public enum class Metric(public val value: kotlin.String) {

  @SerialName(value = "avg_build_time")
  AvgBuildTime("avg_build_time"),

  @SerialName(value = "ssd_usage")
  SsdUsage("ssd_usage"),

  @SerialName(value = "ram_search_usage")
  RamSearchUsage("ram_search_usage"),

  @SerialName(value = "ram_indexing_usage")
  RamIndexingUsage("ram_indexing_usage"),

  @SerialName(value = "cpu_usage")
  CpuUsage("cpu_usage"),

  @SerialName(value = "*")
  Star("*");

  override fun toString(): kotlin.String = value
}
