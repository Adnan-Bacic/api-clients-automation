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
/// Trigger information for scheduled tasks.
/// </summary>
public partial class ScheduleTrigger
{

  /// <summary>
  /// Gets or Sets Type
  /// </summary>
  [JsonPropertyName("type")]
  public ScheduleTriggerType? Type { get; set; }
  /// <summary>
  /// Initializes a new instance of the ScheduleTrigger class.
  /// </summary>
  [JsonConstructor]
  public ScheduleTrigger() { }
  /// <summary>
  /// Initializes a new instance of the ScheduleTrigger class.
  /// </summary>
  /// <param name="type">type (required).</param>
  /// <param name="cron">Cron expression for the task's schedule. (required).</param>
  /// <param name="nextRun">The next scheduled run of the task in RFC 3339 format. (required).</param>
  public ScheduleTrigger(ScheduleTriggerType? type, string cron, string nextRun)
  {
    Type = type;
    Cron = cron ?? throw new ArgumentNullException(nameof(cron));
    NextRun = nextRun ?? throw new ArgumentNullException(nameof(nextRun));
  }

  /// <summary>
  /// Cron expression for the task's schedule.
  /// </summary>
  /// <value>Cron expression for the task's schedule.</value>
  [JsonPropertyName("cron")]
  public string Cron { get; set; }

  /// <summary>
  /// The last time the scheduled task ran in RFC 3339 format.
  /// </summary>
  /// <value>The last time the scheduled task ran in RFC 3339 format.</value>
  [JsonPropertyName("lastRun")]
  public string LastRun { get; set; }

  /// <summary>
  /// The next scheduled run of the task in RFC 3339 format.
  /// </summary>
  /// <value>The next scheduled run of the task in RFC 3339 format.</value>
  [JsonPropertyName("nextRun")]
  public string NextRun { get; set; }

  /// <summary>
  /// Returns the string presentation of the object
  /// </summary>
  /// <returns>String presentation of the object</returns>
  public override string ToString()
  {
    StringBuilder sb = new StringBuilder();
    sb.Append("class ScheduleTrigger {\n");
    sb.Append("  Type: ").Append(Type).Append("\n");
    sb.Append("  Cron: ").Append(Cron).Append("\n");
    sb.Append("  LastRun: ").Append(LastRun).Append("\n");
    sb.Append("  NextRun: ").Append(NextRun).Append("\n");
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
    if (obj is not ScheduleTrigger input)
    {
      return false;
    }

    return
        (Type == input.Type || Type.Equals(input.Type)) &&
        (Cron == input.Cron || (Cron != null && Cron.Equals(input.Cron))) &&
        (LastRun == input.LastRun || (LastRun != null && LastRun.Equals(input.LastRun))) &&
        (NextRun == input.NextRun || (NextRun != null && NextRun.Equals(input.NextRun)));
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
      hashCode = (hashCode * 59) + Type.GetHashCode();
      if (Cron != null)
      {
        hashCode = (hashCode * 59) + Cron.GetHashCode();
      }
      if (LastRun != null)
      {
        hashCode = (hashCode * 59) + LastRun.GetHashCode();
      }
      if (NextRun != null)
      {
        hashCode = (hashCode * 59) + NextRun.GetHashCode();
      }
      return hashCode;
    }
  }

}

