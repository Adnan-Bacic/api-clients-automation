/** Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT. */
package com.algolia.client.model.search

import kotlinx.serialization.*
import kotlinx.serialization.json.*

/**
 * SaveSynonymResponse
 *
 * @param taskID taskID of the task to wait for.
 * @param updatedAt Date of last update (ISO-8601 format).
 * @param id objectID of the inserted object.
 */
@Serializable
public data class SaveSynonymResponse(

  /** taskID of the task to wait for. */
  @SerialName(value = "taskID") val taskID: Long,

  /** Date of last update (ISO-8601 format). */
  @SerialName(value = "updatedAt") val updatedAt: String,

  /** objectID of the inserted object. */
  @SerialName(value = "id") val id: String,
)
