// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost
// - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

package com.algolia.model.search;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.databind.annotation.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/** ReplaceAllObjectsResponse */
public class ReplaceAllObjectsResponse {

  @JsonProperty("copyOperationResponse")
  private UpdatedAtResponse copyOperationResponse;

  @JsonProperty("batchResponses")
  private List<BatchResponse> batchResponses = new ArrayList<>();

  @JsonProperty("moveOperationResponse")
  private UpdatedAtResponse moveOperationResponse;

  public ReplaceAllObjectsResponse setCopyOperationResponse(UpdatedAtResponse copyOperationResponse) {
    this.copyOperationResponse = copyOperationResponse;
    return this;
  }

  /** Get copyOperationResponse */
  @javax.annotation.Nonnull
  public UpdatedAtResponse getCopyOperationResponse() {
    return copyOperationResponse;
  }

  public ReplaceAllObjectsResponse setBatchResponses(List<BatchResponse> batchResponses) {
    this.batchResponses = batchResponses;
    return this;
  }

  public ReplaceAllObjectsResponse addBatchResponses(BatchResponse batchResponsesItem) {
    this.batchResponses.add(batchResponsesItem);
    return this;
  }

  /** The response of the `batch` request(s). */
  @javax.annotation.Nonnull
  public List<BatchResponse> getBatchResponses() {
    return batchResponses;
  }

  public ReplaceAllObjectsResponse setMoveOperationResponse(UpdatedAtResponse moveOperationResponse) {
    this.moveOperationResponse = moveOperationResponse;
    return this;
  }

  /** Get moveOperationResponse */
  @javax.annotation.Nonnull
  public UpdatedAtResponse getMoveOperationResponse() {
    return moveOperationResponse;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ReplaceAllObjectsResponse replaceAllObjectsResponse = (ReplaceAllObjectsResponse) o;
    return (
      Objects.equals(this.copyOperationResponse, replaceAllObjectsResponse.copyOperationResponse) &&
      Objects.equals(this.batchResponses, replaceAllObjectsResponse.batchResponses) &&
      Objects.equals(this.moveOperationResponse, replaceAllObjectsResponse.moveOperationResponse)
    );
  }

  @Override
  public int hashCode() {
    return Objects.hash(copyOperationResponse, batchResponses, moveOperationResponse);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ReplaceAllObjectsResponse {\n");
    sb.append("    copyOperationResponse: ").append(toIndentedString(copyOperationResponse)).append("\n");
    sb.append("    batchResponses: ").append(toIndentedString(batchResponses)).append("\n");
    sb.append("    moveOperationResponse: ").append(toIndentedString(moveOperationResponse)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }
}
