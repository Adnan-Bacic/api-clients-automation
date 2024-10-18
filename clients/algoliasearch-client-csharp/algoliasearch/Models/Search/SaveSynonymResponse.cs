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
/// SaveSynonymResponse
/// </summary>
public partial class SaveSynonymResponse
{
  /// <summary>
  /// Initializes a new instance of the SaveSynonymResponse class.
  /// </summary>
  [JsonConstructor]
  public SaveSynonymResponse() { }
  /// <summary>
  /// Initializes a new instance of the SaveSynonymResponse class.
  /// </summary>
  /// <param name="taskID">Unique identifier of a task.  A successful API response means that a task was added to a queue. It might not run immediately. You can check the task's progress with the [`task` operation](#tag/Indices/operation/getTask) and this `taskID`.  (required).</param>
  /// <param name="updatedAt">Date and time when the object was updated, in RFC 3339 format. (required).</param>
  /// <param name="id">Unique identifier of a synonym object. (required).</param>
  public SaveSynonymResponse(long taskID, string updatedAt, string id)
  {
    TaskID = taskID;
    UpdatedAt = updatedAt ?? throw new ArgumentNullException(nameof(updatedAt));
    Id = id ?? throw new ArgumentNullException(nameof(id));
  }

  /// <summary>
  /// Unique identifier of a task.  A successful API response means that a task was added to a queue. It might not run immediately. You can check the task's progress with the [`task` operation](#tag/Indices/operation/getTask) and this `taskID`. 
  /// </summary>
  /// <value>Unique identifier of a task.  A successful API response means that a task was added to a queue. It might not run immediately. You can check the task's progress with the [`task` operation](#tag/Indices/operation/getTask) and this `taskID`. </value>
  [JsonPropertyName("taskID")]
  public long TaskID { get; set; }

  /// <summary>
  /// Date and time when the object was updated, in RFC 3339 format.
  /// </summary>
  /// <value>Date and time when the object was updated, in RFC 3339 format.</value>
  [JsonPropertyName("updatedAt")]
  public string UpdatedAt { get; set; }

  /// <summary>
  /// Unique identifier of a synonym object.
  /// </summary>
  /// <value>Unique identifier of a synonym object.</value>
  [JsonPropertyName("id")]
  public string Id { get; set; }

  /// <summary>
  /// Returns the string presentation of the object
  /// </summary>
  /// <returns>String presentation of the object</returns>
  public override string ToString()
  {
    StringBuilder sb = new StringBuilder();
    sb.Append("class SaveSynonymResponse {\n");
    sb.Append("  TaskID: ").Append(TaskID).Append("\n");
    sb.Append("  UpdatedAt: ").Append(UpdatedAt).Append("\n");
    sb.Append("  Id: ").Append(Id).Append("\n");
    sb.Append("}\n");
    return sb.ToString();
  }

  /// <summary>
  /// Returns the JSON string presentation of the object
  /// </summary>
  /// <returns>JSON string presentation of the object</returns>
  public virtual string ToJson()
  {
    return JsonSerializer.Serialize(this, JsonConfig.Options);
  }

  /// <summary>
  /// Returns true if objects are equal
  /// </summary>
  /// <param name="obj">Object to be compared</param>
  /// <returns>Boolean</returns>
  public override bool Equals(object obj)
  {
    if (obj is not SaveSynonymResponse input)
    {
      return false;
    }

    return
        (TaskID == input.TaskID || TaskID.Equals(input.TaskID)) &&
        (UpdatedAt == input.UpdatedAt || (UpdatedAt != null && UpdatedAt.Equals(input.UpdatedAt))) &&
        (Id == input.Id || (Id != null && Id.Equals(input.Id)));
  }

  /// <summary>
  /// Gets the hash code
  /// </summary>
  /// <returns>Hash code</returns>
  public override int GetHashCode()
  {
    unchecked // Overflow is fine, just wrap
    {
      int hashCode = 41;
      hashCode = (hashCode * 59) + TaskID.GetHashCode();
      if (UpdatedAt != null)
      {
        hashCode = (hashCode * 59) + UpdatedAt.GetHashCode();
      }
      if (Id != null)
      {
        hashCode = (hashCode * 59) + Id.GetHashCode();
      }
      return hashCode;
    }
  }

}

