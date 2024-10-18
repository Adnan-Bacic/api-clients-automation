// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost
// - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.

package com.algolia.model.abtesting;

import com.fasterxml.jackson.annotation.*;
import com.fasterxml.jackson.databind.annotation.*;
import java.util.Objects;

/** A/B test configuration. */
public class ABTestConfiguration {

  @JsonProperty("outliers")
  private Outliers outliers;

  @JsonProperty("emptySearch")
  private EmptySearch emptySearch;

  @JsonProperty("minimumDetectableEffect")
  private MinimumDetectableEffect minimumDetectableEffect;

  public ABTestConfiguration setOutliers(Outliers outliers) {
    this.outliers = outliers;
    return this;
  }

  /** Get outliers */
  @javax.annotation.Nullable
  public Outliers getOutliers() {
    return outliers;
  }

  public ABTestConfiguration setEmptySearch(EmptySearch emptySearch) {
    this.emptySearch = emptySearch;
    return this;
  }

  /** Get emptySearch */
  @javax.annotation.Nullable
  public EmptySearch getEmptySearch() {
    return emptySearch;
  }

  public ABTestConfiguration setMinimumDetectableEffect(MinimumDetectableEffect minimumDetectableEffect) {
    this.minimumDetectableEffect = minimumDetectableEffect;
    return this;
  }

  /** Get minimumDetectableEffect */
  @javax.annotation.Nullable
  public MinimumDetectableEffect getMinimumDetectableEffect() {
    return minimumDetectableEffect;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ABTestConfiguration abTestConfiguration = (ABTestConfiguration) o;
    return (
      Objects.equals(this.outliers, abTestConfiguration.outliers) &&
      Objects.equals(this.emptySearch, abTestConfiguration.emptySearch) &&
      Objects.equals(this.minimumDetectableEffect, abTestConfiguration.minimumDetectableEffect)
    );
  }

  @Override
  public int hashCode() {
    return Objects.hash(outliers, emptySearch, minimumDetectableEffect);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ABTestConfiguration {\n");
    sb.append("    outliers: ").append(toIndentedString(outliers)).append("\n");
    sb.append("    emptySearch: ").append(toIndentedString(emptySearch)).append("\n");
    sb.append("    minimumDetectableEffect: ").append(toIndentedString(minimumDetectableEffect)).append("\n");
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
