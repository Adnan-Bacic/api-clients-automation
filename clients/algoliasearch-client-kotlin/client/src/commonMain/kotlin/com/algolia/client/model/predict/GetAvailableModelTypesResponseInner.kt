/** Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT. */
package com.algolia.client.model.predict

import kotlinx.serialization.*
import kotlinx.serialization.json.*

/**
 * GetAvailableModelTypesResponseInner
 *
 * @param name Name of the model.
 * @param type Description of the model.
 * @param compatibleSources
 * @param dataRequirements
 */
@Serializable
public data class GetAvailableModelTypesResponseInner(

  /** Name of the model. */
  @SerialName(value = "name") val name: String,

  /** Description of the model. */
  @SerialName(value = "type") val type: String,

  @SerialName(value = "compatibleSources") val compatibleSources: List<CompatibleSources>,

  @SerialName(value = "dataRequirements") val dataRequirements: GetAvailableModelTypesResponseInnerDataRequirements,
)
