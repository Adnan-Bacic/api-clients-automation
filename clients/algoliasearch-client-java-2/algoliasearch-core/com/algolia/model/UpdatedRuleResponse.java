package com.algolia.model;

import com.google.gson.annotations.SerializedName;
import io.swagger.annotations.ApiModelProperty;
import java.time.OffsetDateTime;
import java.util.Objects;

/** UpdatedRuleResponse */
public class UpdatedRuleResponse {

  public static final String SERIALIZED_NAME_OBJECT_I_D = "objectID";

  @SerializedName(SERIALIZED_NAME_OBJECT_I_D)
  private String objectID;

  public static final String SERIALIZED_NAME_UPDATED_AT = "updatedAt";

  @SerializedName(SERIALIZED_NAME_UPDATED_AT)
  private OffsetDateTime updatedAt;

  public static final String SERIALIZED_NAME_TASK_I_D = "taskID";

  @SerializedName(SERIALIZED_NAME_TASK_I_D)
  private Integer taskID;

  public UpdatedRuleResponse objectID(String objectID) {
    this.objectID = objectID;
    return this;
  }

  /**
   * Unique identifier of the object.
   *
   * @return objectID
   */
  @javax.annotation.Nonnull
  @ApiModelProperty(required = true, value = "Unique identifier of the object.")
  public String getObjectID() {
    return objectID;
  }

  public void setObjectID(String objectID) {
    this.objectID = objectID;
  }

  public UpdatedRuleResponse updatedAt(OffsetDateTime updatedAt) {
    this.updatedAt = updatedAt;
    return this;
  }

  /**
   * Date of last update (ISO-8601 format).
   *
   * @return updatedAt
   */
  @javax.annotation.Nonnull
  @ApiModelProperty(
    required = true,
    value = "Date of last update (ISO-8601 format)."
  )
  public OffsetDateTime getUpdatedAt() {
    return updatedAt;
  }

  public void setUpdatedAt(OffsetDateTime updatedAt) {
    this.updatedAt = updatedAt;
  }

  public UpdatedRuleResponse taskID(Integer taskID) {
    this.taskID = taskID;
    return this;
  }

  /**
   * taskID of the indexing task to wait for.
   *
   * @return taskID
   */
  @javax.annotation.Nonnull
  @ApiModelProperty(
    required = true,
    value = "taskID of the indexing task to wait for."
  )
  public Integer getTaskID() {
    return taskID;
  }

  public void setTaskID(Integer taskID) {
    this.taskID = taskID;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UpdatedRuleResponse updatedRuleResponse = (UpdatedRuleResponse) o;
    return (
      Objects.equals(this.objectID, updatedRuleResponse.objectID) &&
      Objects.equals(this.updatedAt, updatedRuleResponse.updatedAt) &&
      Objects.equals(this.taskID, updatedRuleResponse.taskID)
    );
  }

  @Override
  public int hashCode() {
    return Objects.hash(objectID, updatedAt, taskID);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UpdatedRuleResponse {\n");
    sb.append("    objectID: ").append(toIndentedString(objectID)).append("\n");
    sb
      .append("    updatedAt: ")
      .append(toIndentedString(updatedAt))
      .append("\n");
    sb.append("    taskID: ").append(toIndentedString(taskID)).append("\n");
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
