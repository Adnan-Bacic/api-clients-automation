//
// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
//

using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using Algolia.Search.Models;

namespace Algolia.Search.Search.Models
{
  /// <summary>
  /// Rule object.
  /// </summary>
  [DataContract(Name = "rule")]
  public partial class Rule
  {
    /// <summary>
    /// Initializes a new instance of the <see cref="Rule" /> class.
    /// </summary>
    [JsonConstructorAttribute]
    protected Rule() { }
    /// <summary>
    /// Initializes a new instance of the <see cref="Rule" /> class.
    /// </summary>
    /// <param name="objectID">Unique identifier for a rule object. (required).</param>
    /// <param name="conditions">[Conditions](https://www.algolia.com/doc/guides/managing-results/rules/rules-overview/#conditions) required to activate a rule. You can use up to 25 conditions per rule. .</param>
    /// <param name="consequence">consequence.</param>
    /// <param name="description">Description of the rule&#39;s purpose. This can be helpful for display in the Algolia dashboard..</param>
    /// <param name="enabled">Indicates whether to enable the rule. If it isn&#39;t enabled, it isn&#39;t applied at query time. (default to true).</param>
    /// <param name="validity">If you specify a validity period, the rule _only_ applies only during that period. If specified, the array must not be empty..</param>
    public Rule(string objectID = default(string), List<Condition> conditions = default(List<Condition>), Consequence consequence = default(Consequence), string description = default(string), bool enabled = true, List<TimeRange> validity = default(List<TimeRange>))
    {
      // to ensure "objectID" is required (not null)
      if (objectID == null)
      {
        throw new ArgumentNullException("objectID is a required property for Rule and cannot be null");
      }
      this.ObjectID = objectID;
      this.Conditions = conditions;
      this.Consequence = consequence;
      this.Description = description;
      this.Enabled = enabled;
      this.Validity = validity;
    }

    /// <summary>
    /// Unique identifier for a rule object.
    /// </summary>
    /// <value>Unique identifier for a rule object.</value>
    [DataMember(Name = "objectID", IsRequired = true, EmitDefaultValue = true)]
    public string ObjectID { get; set; }

    /// <summary>
    /// [Conditions](https://www.algolia.com/doc/guides/managing-results/rules/rules-overview/#conditions) required to activate a rule. You can use up to 25 conditions per rule. 
    /// </summary>
    /// <value>[Conditions](https://www.algolia.com/doc/guides/managing-results/rules/rules-overview/#conditions) required to activate a rule. You can use up to 25 conditions per rule. </value>
    [DataMember(Name = "conditions", EmitDefaultValue = false)]
    public List<Condition> Conditions { get; set; }

    /// <summary>
    /// Gets or Sets Consequence
    /// </summary>
    [DataMember(Name = "consequence", EmitDefaultValue = false)]
    public Consequence Consequence { get; set; }

    /// <summary>
    /// Description of the rule&#39;s purpose. This can be helpful for display in the Algolia dashboard.
    /// </summary>
    /// <value>Description of the rule&#39;s purpose. This can be helpful for display in the Algolia dashboard.</value>
    [DataMember(Name = "description", EmitDefaultValue = false)]
    public string Description { get; set; }

    /// <summary>
    /// Indicates whether to enable the rule. If it isn&#39;t enabled, it isn&#39;t applied at query time.
    /// </summary>
    /// <value>Indicates whether to enable the rule. If it isn&#39;t enabled, it isn&#39;t applied at query time.</value>
    [DataMember(Name = "enabled", EmitDefaultValue = true)]
    public bool Enabled { get; set; }

    /// <summary>
    /// If you specify a validity period, the rule _only_ applies only during that period. If specified, the array must not be empty.
    /// </summary>
    /// <value>If you specify a validity period, the rule _only_ applies only during that period. If specified, the array must not be empty.</value>
    [DataMember(Name = "validity", EmitDefaultValue = false)]
    public List<TimeRange> Validity { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
      StringBuilder sb = new StringBuilder();
      sb.Append("class Rule {\n");
      sb.Append("  ObjectID: ").Append(ObjectID).Append("\n");
      sb.Append("  Conditions: ").Append(Conditions).Append("\n");
      sb.Append("  Consequence: ").Append(Consequence).Append("\n");
      sb.Append("  Description: ").Append(Description).Append("\n");
      sb.Append("  Enabled: ").Append(Enabled).Append("\n");
      sb.Append("  Validity: ").Append(Validity).Append("\n");
      sb.Append("}\n");
      return sb.ToString();
    }

    /// <summary>
    /// Returns the JSON string presentation of the object
    /// </summary>
    /// <returns>JSON string presentation of the object</returns>
    public virtual string ToJson()
    {
      return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
    }

  }

}
