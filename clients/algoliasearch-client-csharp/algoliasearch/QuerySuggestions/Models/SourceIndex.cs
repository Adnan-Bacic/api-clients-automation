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

namespace Algolia.Search.QuerySuggestions.Models
{
  /// <summary>
  /// Configuration of an Algolia index for Query Suggestions.
  /// </summary>
  [DataContract(Name = "SourceIndex")]
  public partial class SourceIndex
  {
    /// <summary>
    /// Initializes a new instance of the <see cref="SourceIndex" /> class.
    /// </summary>
    [JsonConstructorAttribute]
    protected SourceIndex() { }
    /// <summary>
    /// Initializes a new instance of the <see cref="SourceIndex" /> class.
    /// </summary>
    /// <param name="indexName">Name of the Algolia index to use as source for query suggestions. (required).</param>
    /// <param name="replicas">If true, Query Suggestions uses all replicas of the primary index to find popular searches. If false, only the primary index is used.   (default to false).</param>
    /// <param name="analyticsTags">[Analytics tags](https://www.algolia.com/doc/api-reference/api-parameters/analyticsTags/) for filtering the popular searches. .</param>
    /// <param name="facets">Facets to use as top categories with your suggestions.  If provided, Query Suggestions adds the top facet values to each suggestion. .</param>
    /// <param name="minHits">Minimum number of hits required to be included as a suggestion.  A search query must at least generate &#x60;minHits&#x60; hits to be included in the Query Suggestions index.  (default to 5).</param>
    /// <param name="minLetters">Minimum letters required to be included as a suggestion.  A search query must be at least &#x60;minLetters&#x60; long to be included in the Query Suggestions index.  (default to 4).</param>
    /// <param name="generate">generate.</param>
    /// <param name="external">Algolia indices with popular searches to use as query suggestions.  Records of these indices must have these attributes:    - &#x60;query&#x60;: search query which will be added as a suggestion   - &#x60;count&#x60;: measure of popularity of that search query  For example, you can export popular searches from an external analytics tool, such as Google Analytics or Adobe Analytics, and feed this data into an external Algolia index. You can use this external index to generate query suggestions until your Algolia analytics has collected enough data. .</param>
    public SourceIndex(string indexName = default(string), bool replicas = false, List<string> analyticsTags = default(List<string>), List<Facet> facets = default(List<Facet>), int minHits = 5, int minLetters = 4, List<List<string>> generate = default(List<List<string>>), List<string> external = default(List<string>))
    {
      // to ensure "indexName" is required (not null)
      if (indexName == null)
      {
        throw new ArgumentNullException("indexName is a required property for SourceIndex and cannot be null");
      }
      this.IndexName = indexName;
      this.Replicas = replicas;
      this.AnalyticsTags = analyticsTags;
      this.Facets = facets;
      this.MinHits = minHits;
      this.MinLetters = minLetters;
      this.Generate = generate;
      this.External = external;
    }

    /// <summary>
    /// Name of the Algolia index to use as source for query suggestions.
    /// </summary>
    /// <value>Name of the Algolia index to use as source for query suggestions.</value>
    [DataMember(Name = "indexName", IsRequired = true, EmitDefaultValue = true)]
    public string IndexName { get; set; }

    /// <summary>
    /// If true, Query Suggestions uses all replicas of the primary index to find popular searches. If false, only the primary index is used.  
    /// </summary>
    /// <value>If true, Query Suggestions uses all replicas of the primary index to find popular searches. If false, only the primary index is used.  </value>
    [DataMember(Name = "replicas", EmitDefaultValue = true)]
    public bool Replicas { get; set; }

    /// <summary>
    /// [Analytics tags](https://www.algolia.com/doc/api-reference/api-parameters/analyticsTags/) for filtering the popular searches. 
    /// </summary>
    /// <value>[Analytics tags](https://www.algolia.com/doc/api-reference/api-parameters/analyticsTags/) for filtering the popular searches. </value>
    [DataMember(Name = "analyticsTags", EmitDefaultValue = true)]
    public List<string> AnalyticsTags { get; set; }

    /// <summary>
    /// Facets to use as top categories with your suggestions.  If provided, Query Suggestions adds the top facet values to each suggestion. 
    /// </summary>
    /// <value>Facets to use as top categories with your suggestions.  If provided, Query Suggestions adds the top facet values to each suggestion. </value>
    [DataMember(Name = "facets", EmitDefaultValue = true)]
    public List<Facet> Facets { get; set; }

    /// <summary>
    /// Minimum number of hits required to be included as a suggestion.  A search query must at least generate &#x60;minHits&#x60; hits to be included in the Query Suggestions index. 
    /// </summary>
    /// <value>Minimum number of hits required to be included as a suggestion.  A search query must at least generate &#x60;minHits&#x60; hits to be included in the Query Suggestions index. </value>
    [DataMember(Name = "minHits", EmitDefaultValue = false)]
    public int MinHits { get; set; }

    /// <summary>
    /// Minimum letters required to be included as a suggestion.  A search query must be at least &#x60;minLetters&#x60; long to be included in the Query Suggestions index. 
    /// </summary>
    /// <value>Minimum letters required to be included as a suggestion.  A search query must be at least &#x60;minLetters&#x60; long to be included in the Query Suggestions index. </value>
    [DataMember(Name = "minLetters", EmitDefaultValue = false)]
    public int MinLetters { get; set; }

    /// <summary>
    /// Gets or Sets Generate
    /// </summary>
    [DataMember(Name = "generate", EmitDefaultValue = false)]
    public List<List<string>> Generate { get; set; }

    /// <summary>
    /// Algolia indices with popular searches to use as query suggestions.  Records of these indices must have these attributes:    - &#x60;query&#x60;: search query which will be added as a suggestion   - &#x60;count&#x60;: measure of popularity of that search query  For example, you can export popular searches from an external analytics tool, such as Google Analytics or Adobe Analytics, and feed this data into an external Algolia index. You can use this external index to generate query suggestions until your Algolia analytics has collected enough data. 
    /// </summary>
    /// <value>Algolia indices with popular searches to use as query suggestions.  Records of these indices must have these attributes:    - &#x60;query&#x60;: search query which will be added as a suggestion   - &#x60;count&#x60;: measure of popularity of that search query  For example, you can export popular searches from an external analytics tool, such as Google Analytics or Adobe Analytics, and feed this data into an external Algolia index. You can use this external index to generate query suggestions until your Algolia analytics has collected enough data. </value>
    [DataMember(Name = "external", EmitDefaultValue = true)]
    public List<string> External { get; set; }

    /// <summary>
    /// Returns the string presentation of the object
    /// </summary>
    /// <returns>String presentation of the object</returns>
    public override string ToString()
    {
      StringBuilder sb = new StringBuilder();
      sb.Append("class SourceIndex {\n");
      sb.Append("  IndexName: ").Append(IndexName).Append("\n");
      sb.Append("  Replicas: ").Append(Replicas).Append("\n");
      sb.Append("  AnalyticsTags: ").Append(AnalyticsTags).Append("\n");
      sb.Append("  Facets: ").Append(Facets).Append("\n");
      sb.Append("  MinHits: ").Append(MinHits).Append("\n");
      sb.Append("  MinLetters: ").Append(MinLetters).Append("\n");
      sb.Append("  Generate: ").Append(Generate).Append("\n");
      sb.Append("  External: ").Append(External).Append("\n");
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
