/** Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT. */
package com.algolia.client.model.querysuggestions

import kotlinx.serialization.*
import kotlinx.serialization.json.*

/**
 * LogFile
 *
 * @param timestamp date and time of creation of the record.
 * @param level
 * @param message detailed description of what happened.
 * @param contextLevel indicates the hierarchy of the records. For example, a record with contextLevel=1 belongs to a preceding record with contextLevel=0.
 */
@Serializable
public data class LogFile(

  /** date and time of creation of the record. */
  @SerialName(value = "timestamp") val timestamp: String,

  @SerialName(value = "level") val level: LogLevel,

  /** detailed description of what happened. */
  @SerialName(value = "message") val message: String,

  /** indicates the hierarchy of the records. For example, a record with contextLevel=1 belongs to a preceding record with contextLevel=0. */
  @SerialName(value = "contextLevel") val contextLevel: Int,
)
