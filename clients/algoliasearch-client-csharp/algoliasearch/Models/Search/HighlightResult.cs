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
using System.IO;
using System.Reflection;
using Algolia.Search.Models.Common;

namespace Algolia.Search.Models.Search;

/// <summary>
/// HighlightResult
/// </summary>
[JsonConverter(typeof(HighlightResultJsonConverter))]
public partial class HighlightResult : AbstractSchema
{
  /// <summary>
  /// Initializes a new instance of the HighlightResult class
  /// with a HighlightResultOption
  /// </summary>
  /// <param name="actualInstance">An instance of HighlightResultOption.</param>
  public HighlightResult(HighlightResultOption actualInstance)
  {
    ActualInstance = actualInstance ?? throw new ArgumentException("Invalid instance found. Must not be null.");
  }

  /// <summary>
  /// Initializes a new instance of the HighlightResult class
  /// with a Dictionary{string, HighlightResult}
  /// </summary>
  /// <param name="actualInstance">An instance of Dictionary&lt;string, HighlightResult&gt;.</param>
  public HighlightResult(Dictionary<string, HighlightResult> actualInstance)
  {
    ActualInstance = actualInstance ?? throw new ArgumentException("Invalid instance found. Must not be null.");
  }

  /// <summary>
  /// Initializes a new instance of the HighlightResult class
  /// with a List{HighlightResult}
  /// </summary>
  /// <param name="actualInstance">An instance of List&lt;HighlightResult&gt;.</param>
  public HighlightResult(List<HighlightResult> actualInstance)
  {
    ActualInstance = actualInstance ?? throw new ArgumentException("Invalid instance found. Must not be null.");
  }


  /// <summary>
  /// Gets or Sets ActualInstance
  /// </summary>
  public sealed override object ActualInstance { get; set; }

  /// <summary>
  /// Get the actual instance of `HighlightResultOption`. If the actual instance is not `HighlightResultOption`,
  /// the InvalidClassException will be thrown
  /// </summary>
  /// <returns>An instance of HighlightResultOption</returns>
  public HighlightResultOption AsHighlightResultOption()
  {
    return (HighlightResultOption)ActualInstance;
  }

  /// <summary>
  /// Get the actual instance of `Dictionary{string, HighlightResult}`. If the actual instance is not `Dictionary{string, HighlightResult}`,
  /// the InvalidClassException will be thrown
  /// </summary>
  /// <returns>An instance of Dictionary&lt;string, HighlightResult&gt;</returns>
  public Dictionary<string, HighlightResult> AsDictionaryHighlightResult()
  {
    return (Dictionary<string, HighlightResult>)ActualInstance;
  }

  /// <summary>
  /// Get the actual instance of `List{HighlightResult}`. If the actual instance is not `List{HighlightResult}`,
  /// the InvalidClassException will be thrown
  /// </summary>
  /// <returns>An instance of List&lt;HighlightResult&gt;</returns>
  public List<HighlightResult> AsListHighlightResult()
  {
    return (List<HighlightResult>)ActualInstance;
  }


  /// <summary>
  /// Check if the actual instance is of `HighlightResultOption` type.
  /// </summary>
  /// <returns>Whether or not the instance is the type</returns>
  public bool IsHighlightResultOption()
  {
    return ActualInstance.GetType() == typeof(HighlightResultOption);
  }

  /// <summary>
  /// Check if the actual instance is of `Dictionary{string, HighlightResult}` type.
  /// </summary>
  /// <returns>Whether or not the instance is the type</returns>
  public bool IsDictionaryHighlightResult()
  {
    return ActualInstance.GetType() == typeof(Dictionary<string, HighlightResult>);
  }

  /// <summary>
  /// Check if the actual instance is of `List{HighlightResult}` type.
  /// </summary>
  /// <returns>Whether or not the instance is the type</returns>
  public bool IsListHighlightResult()
  {
    return ActualInstance.GetType() == typeof(List<HighlightResult>);
  }

  /// <summary>
  /// Returns the string presentation of the object
  /// </summary>
  /// <returns>String presentation of the object</returns>
  public override string ToString()
  {
    var sb = new StringBuilder();
    sb.Append("class HighlightResult {\n");
    sb.Append("  ActualInstance: ").Append(ActualInstance).Append("\n");
    sb.Append("}\n");
    return sb.ToString();
  }

  /// <summary>
  /// Returns the JSON string presentation of the object
  /// </summary>
  /// <returns>JSON string presentation of the object</returns>
  public override string ToJson()
  {
    return JsonSerializer.Serialize(ActualInstance, JsonConfig.Options);
  }

  /// <summary>
  /// Returns true if objects are equal
  /// </summary>
  /// <param name="obj">Object to be compared</param>
  /// <returns>Boolean</returns>
  public override bool Equals(object obj)
  {
    if (obj is not HighlightResult input)
    {
      return false;
    }

    return ActualInstance.Equals(input.ActualInstance);
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
      if (ActualInstance != null)
        hashCode = hashCode * 59 + ActualInstance.GetHashCode();
      return hashCode;
    }
  }
}





/// <summary>
/// Custom JSON converter for HighlightResult
/// </summary>
public class HighlightResultJsonConverter : JsonConverter<HighlightResult>
{

  /// <summary>
  /// Check if the object can be converted
  /// </summary>
  /// <param name="objectType">Object type</param>
  /// <returns>True if the object can be converted</returns>
  public override bool CanConvert(Type objectType)
  {
    return objectType == typeof(HighlightResult);
  }

  /// <summary>
  /// To convert a JSON string into an object
  /// </summary>
  /// <param name="reader">JSON reader</param>
  /// <param name="typeToConvert">Object type</param>
  /// <param name="options">Serializer options</param>
  /// <returns>The object converted from the JSON string</returns>
  public override HighlightResult Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
  {
    var jsonDocument = JsonDocument.ParseValue(ref reader);
    var root = jsonDocument.RootElement;
    if (root.ValueKind == JsonValueKind.Object && root.TryGetProperty("matchLevel", out _) && root.TryGetProperty("matchedWords", out _))
    {
      try
      {
        return new HighlightResult(jsonDocument.Deserialize<HighlightResultOption>(JsonConfig.Options));
      }
      catch (Exception exception)
      {
        // deserialization failed, try the next one
        System.Diagnostics.Debug.WriteLine($"Failed to deserialize into HighlightResultOption: {exception}");
      }
    }
    if (root.ValueKind == JsonValueKind.Object)
    {
      try
      {
        return new HighlightResult(jsonDocument.Deserialize<Dictionary<string, HighlightResult>>(JsonConfig.Options));
      }
      catch (Exception exception)
      {
        // deserialization failed, try the next one
        System.Diagnostics.Debug.WriteLine($"Failed to deserialize into Dictionary<string, HighlightResult>: {exception}");
      }
    }
    if (root.ValueKind == JsonValueKind.Array)
    {
      try
      {
        return new HighlightResult(jsonDocument.Deserialize<List<HighlightResult>>(JsonConfig.Options));
      }
      catch (Exception exception)
      {
        // deserialization failed, try the next one
        System.Diagnostics.Debug.WriteLine($"Failed to deserialize into List<HighlightResult>: {exception}");
      }
    }
    throw new InvalidDataException($"The JSON string cannot be deserialized into any schema defined.");
  }

  /// <summary>
  /// To write the JSON string
  /// </summary>
  /// <param name="writer">JSON writer</param>
  /// <param name="value">HighlightResult to be converted into a JSON string</param>
  /// <param name="options">JSON Serializer options</param>
  public override void Write(Utf8JsonWriter writer, HighlightResult value, JsonSerializerOptions options)
  {
    writer.WriteRawValue(value.ToJson());
  }
}

