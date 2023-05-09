// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package recommend

import (
	"encoding/json"
	"fmt"
)

// TrendingRequest struct for TrendingRequest
type TrendingRequest struct {
	Model TrendingModels `json:"model" validate:"required"`
	// The facet name to use for trending models.
	FacetName *string `json:"facetName,omitempty"`
	// The facet value to use for trending models.
	FacetValue *string `json:"facetValue,omitempty"`
	// The Algolia index name.
	IndexName string `json:"indexName" validate:"required"`
	// The threshold to use when filtering recommendations by their score.
	Threshold int32 `json:"threshold" validate:"required"`
	// The max number of recommendations to retrieve. If it's set to 0, all the recommendations of the objectID may be returned.
	MaxRecommendations *int32              `json:"maxRecommendations,omitempty"`
	QueryParameters    *SearchParamsObject `json:"queryParameters,omitempty"`
	FallbackParameters *SearchParamsObject `json:"fallbackParameters,omitempty"`
}

type TrendingRequestOption func(f *TrendingRequest)

func WithTrendingRequestFacetName(val string) TrendingRequestOption {
	return func(f *TrendingRequest) {
		f.FacetName = &val
	}
}

func WithTrendingRequestFacetValue(val string) TrendingRequestOption {
	return func(f *TrendingRequest) {
		f.FacetValue = &val
	}
}

func WithTrendingRequestMaxRecommendations(val int32) TrendingRequestOption {
	return func(f *TrendingRequest) {
		f.MaxRecommendations = &val
	}
}

func WithTrendingRequestQueryParameters(val SearchParamsObject) TrendingRequestOption {
	return func(f *TrendingRequest) {
		f.QueryParameters = &val
	}
}

func WithTrendingRequestFallbackParameters(val SearchParamsObject) TrendingRequestOption {
	return func(f *TrendingRequest) {
		f.FallbackParameters = &val
	}
}

// NewTrendingRequest instantiates a new TrendingRequest object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewTrendingRequest(model TrendingModels, indexName string, threshold int32, opts ...TrendingRequestOption) *TrendingRequest {
	this := &TrendingRequest{}
	this.Model = model
	this.IndexName = indexName
	this.Threshold = threshold
	for _, opt := range opts {
		opt(this)
	}
	return this
}

// NewTrendingRequestWithDefaults instantiates a new TrendingRequest object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewTrendingRequestWithDefaults() *TrendingRequest {
	this := &TrendingRequest{}
	var maxRecommendations int32 = 0
	this.MaxRecommendations = &maxRecommendations
	return this
}

// GetModel returns the Model field value
func (o *TrendingRequest) GetModel() TrendingModels {
	if o == nil {
		var ret TrendingModels
		return ret
	}

	return o.Model
}

// GetModelOk returns a tuple with the Model field value
// and a boolean to check if the value has been set.
func (o *TrendingRequest) GetModelOk() (*TrendingModels, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Model, true
}

// SetModel sets field value
func (o *TrendingRequest) SetModel(v TrendingModels) {
	o.Model = v
}

// GetFacetName returns the FacetName field value if set, zero value otherwise.
func (o *TrendingRequest) GetFacetName() string {
	if o == nil || o.FacetName == nil {
		var ret string
		return ret
	}
	return *o.FacetName
}

// GetFacetNameOk returns a tuple with the FacetName field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TrendingRequest) GetFacetNameOk() (*string, bool) {
	if o == nil || o.FacetName == nil {
		return nil, false
	}
	return o.FacetName, true
}

// HasFacetName returns a boolean if a field has been set.
func (o *TrendingRequest) HasFacetName() bool {
	if o != nil && o.FacetName != nil {
		return true
	}

	return false
}

// SetFacetName gets a reference to the given string and assigns it to the FacetName field.
func (o *TrendingRequest) SetFacetName(v string) {
	o.FacetName = &v
}

// GetFacetValue returns the FacetValue field value if set, zero value otherwise.
func (o *TrendingRequest) GetFacetValue() string {
	if o == nil || o.FacetValue == nil {
		var ret string
		return ret
	}
	return *o.FacetValue
}

// GetFacetValueOk returns a tuple with the FacetValue field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TrendingRequest) GetFacetValueOk() (*string, bool) {
	if o == nil || o.FacetValue == nil {
		return nil, false
	}
	return o.FacetValue, true
}

// HasFacetValue returns a boolean if a field has been set.
func (o *TrendingRequest) HasFacetValue() bool {
	if o != nil && o.FacetValue != nil {
		return true
	}

	return false
}

// SetFacetValue gets a reference to the given string and assigns it to the FacetValue field.
func (o *TrendingRequest) SetFacetValue(v string) {
	o.FacetValue = &v
}

// GetIndexName returns the IndexName field value
func (o *TrendingRequest) GetIndexName() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.IndexName
}

// GetIndexNameOk returns a tuple with the IndexName field value
// and a boolean to check if the value has been set.
func (o *TrendingRequest) GetIndexNameOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.IndexName, true
}

// SetIndexName sets field value
func (o *TrendingRequest) SetIndexName(v string) {
	o.IndexName = v
}

// GetThreshold returns the Threshold field value
func (o *TrendingRequest) GetThreshold() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Threshold
}

// GetThresholdOk returns a tuple with the Threshold field value
// and a boolean to check if the value has been set.
func (o *TrendingRequest) GetThresholdOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Threshold, true
}

// SetThreshold sets field value
func (o *TrendingRequest) SetThreshold(v int32) {
	o.Threshold = v
}

// GetMaxRecommendations returns the MaxRecommendations field value if set, zero value otherwise.
func (o *TrendingRequest) GetMaxRecommendations() int32 {
	if o == nil || o.MaxRecommendations == nil {
		var ret int32
		return ret
	}
	return *o.MaxRecommendations
}

// GetMaxRecommendationsOk returns a tuple with the MaxRecommendations field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TrendingRequest) GetMaxRecommendationsOk() (*int32, bool) {
	if o == nil || o.MaxRecommendations == nil {
		return nil, false
	}
	return o.MaxRecommendations, true
}

// HasMaxRecommendations returns a boolean if a field has been set.
func (o *TrendingRequest) HasMaxRecommendations() bool {
	if o != nil && o.MaxRecommendations != nil {
		return true
	}

	return false
}

// SetMaxRecommendations gets a reference to the given int32 and assigns it to the MaxRecommendations field.
func (o *TrendingRequest) SetMaxRecommendations(v int32) {
	o.MaxRecommendations = &v
}

// GetQueryParameters returns the QueryParameters field value if set, zero value otherwise.
func (o *TrendingRequest) GetQueryParameters() SearchParamsObject {
	if o == nil || o.QueryParameters == nil {
		var ret SearchParamsObject
		return ret
	}
	return *o.QueryParameters
}

// GetQueryParametersOk returns a tuple with the QueryParameters field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TrendingRequest) GetQueryParametersOk() (*SearchParamsObject, bool) {
	if o == nil || o.QueryParameters == nil {
		return nil, false
	}
	return o.QueryParameters, true
}

// HasQueryParameters returns a boolean if a field has been set.
func (o *TrendingRequest) HasQueryParameters() bool {
	if o != nil && o.QueryParameters != nil {
		return true
	}

	return false
}

// SetQueryParameters gets a reference to the given SearchParamsObject and assigns it to the QueryParameters field.
func (o *TrendingRequest) SetQueryParameters(v SearchParamsObject) {
	o.QueryParameters = &v
}

// GetFallbackParameters returns the FallbackParameters field value if set, zero value otherwise.
func (o *TrendingRequest) GetFallbackParameters() SearchParamsObject {
	if o == nil || o.FallbackParameters == nil {
		var ret SearchParamsObject
		return ret
	}
	return *o.FallbackParameters
}

// GetFallbackParametersOk returns a tuple with the FallbackParameters field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *TrendingRequest) GetFallbackParametersOk() (*SearchParamsObject, bool) {
	if o == nil || o.FallbackParameters == nil {
		return nil, false
	}
	return o.FallbackParameters, true
}

// HasFallbackParameters returns a boolean if a field has been set.
func (o *TrendingRequest) HasFallbackParameters() bool {
	if o != nil && o.FallbackParameters != nil {
		return true
	}

	return false
}

// SetFallbackParameters gets a reference to the given SearchParamsObject and assigns it to the FallbackParameters field.
func (o *TrendingRequest) SetFallbackParameters(v SearchParamsObject) {
	o.FallbackParameters = &v
}

func (o TrendingRequest) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]any{}
	if true {
		toSerialize["model"] = o.Model
	}
	if o.FacetName != nil {
		toSerialize["facetName"] = o.FacetName
	}
	if o.FacetValue != nil {
		toSerialize["facetValue"] = o.FacetValue
	}
	if true {
		toSerialize["indexName"] = o.IndexName
	}
	if true {
		toSerialize["threshold"] = o.Threshold
	}
	if o.MaxRecommendations != nil {
		toSerialize["maxRecommendations"] = o.MaxRecommendations
	}
	if o.QueryParameters != nil {
		toSerialize["queryParameters"] = o.QueryParameters
	}
	if o.FallbackParameters != nil {
		toSerialize["fallbackParameters"] = o.FallbackParameters
	}
	return json.Marshal(toSerialize)
}

func (o TrendingRequest) String() string {
	out := ""
	out += fmt.Sprintf("  model=%v\n", o.Model)
	out += fmt.Sprintf("  facetName=%v\n", o.FacetName)
	out += fmt.Sprintf("  facetValue=%v\n", o.FacetValue)
	out += fmt.Sprintf("  indexName=%v\n", o.IndexName)
	out += fmt.Sprintf("  threshold=%v\n", o.Threshold)
	out += fmt.Sprintf("  maxRecommendations=%v\n", o.MaxRecommendations)
	out += fmt.Sprintf("  queryParameters=%v\n", o.QueryParameters)
	out += fmt.Sprintf("  fallbackParameters=%v\n", o.FallbackParameters)
	return fmt.Sprintf("TrendingRequest {\n%s}", out)
}

type NullableTrendingRequest struct {
	value *TrendingRequest
	isSet bool
}

func (v NullableTrendingRequest) Get() *TrendingRequest {
	return v.value
}

func (v *NullableTrendingRequest) Set(val *TrendingRequest) {
	v.value = val
	v.isSet = true
}

func (v NullableTrendingRequest) IsSet() bool {
	return v.isSet
}

func (v *NullableTrendingRequest) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableTrendingRequest(val *TrendingRequest) *NullableTrendingRequest {
	return &NullableTrendingRequest{value: val, isSet: true}
}

func (v NullableTrendingRequest) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableTrendingRequest) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
