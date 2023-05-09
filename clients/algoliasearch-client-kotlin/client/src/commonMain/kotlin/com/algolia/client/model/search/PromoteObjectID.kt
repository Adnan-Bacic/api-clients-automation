/** Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT. */
package com.algolia.client.model.search

import kotlinx.serialization.*
import kotlinx.serialization.json.*

/**
 * Single objectID to promote as hits.
 *
 * @param objectID Unique identifier of the object to promote.
 * @param position The position to promote the objects to (zero-based). If you pass objectIDs, the objects are placed at this position as a group. For example, if you pass four objectIDs to position 0, the objects take the first four positions.
 */
@Serializable
public data class PromoteObjectID(

  /** Unique identifier of the object to promote. */
  @SerialName(value = "objectID") val objectID: String,

  /** The position to promote the objects to (zero-based). If you pass objectIDs, the objects are placed at this position as a group. For example, if you pass four objectIDs to position 0, the objects take the first four positions. */
  @SerialName(value = "position") val position: Int,
) : Promote
