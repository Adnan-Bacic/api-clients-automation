// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package predict

import (
	"encoding/json"
	"fmt"
)

// PredictionsFunnelStageSuccess Prediction for the **funnel_stage** model.
type PredictionsFunnelStageSuccess struct {
	Value         []FunnelStage `json:"value" validate:"required"`
	LastUpdatedAt string        `json:"lastUpdatedAt" validate:"required"`
}

// NewPredictionsFunnelStageSuccess instantiates a new PredictionsFunnelStageSuccess object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewPredictionsFunnelStageSuccess(value []FunnelStage, lastUpdatedAt string) *PredictionsFunnelStageSuccess {
	this := &PredictionsFunnelStageSuccess{}
	this.Value = value
	this.LastUpdatedAt = lastUpdatedAt
	return this
}

// NewPredictionsFunnelStageSuccessWithDefaults instantiates a new PredictionsFunnelStageSuccess object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewPredictionsFunnelStageSuccessWithDefaults() *PredictionsFunnelStageSuccess {
	this := &PredictionsFunnelStageSuccess{}
	return this
}

// GetValue returns the Value field value
func (o *PredictionsFunnelStageSuccess) GetValue() []FunnelStage {
	if o == nil {
		var ret []FunnelStage
		return ret
	}

	return o.Value
}

// GetValueOk returns a tuple with the Value field value
// and a boolean to check if the value has been set.
func (o *PredictionsFunnelStageSuccess) GetValueOk() ([]FunnelStage, bool) {
	if o == nil {
		return nil, false
	}
	return o.Value, true
}

// SetValue sets field value
func (o *PredictionsFunnelStageSuccess) SetValue(v []FunnelStage) {
	o.Value = v
}

// GetLastUpdatedAt returns the LastUpdatedAt field value
func (o *PredictionsFunnelStageSuccess) GetLastUpdatedAt() string {
	if o == nil {
		var ret string
		return ret
	}

	return o.LastUpdatedAt
}

// GetLastUpdatedAtOk returns a tuple with the LastUpdatedAt field value
// and a boolean to check if the value has been set.
func (o *PredictionsFunnelStageSuccess) GetLastUpdatedAtOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return &o.LastUpdatedAt, true
}

// SetLastUpdatedAt sets field value
func (o *PredictionsFunnelStageSuccess) SetLastUpdatedAt(v string) {
	o.LastUpdatedAt = v
}

func (o PredictionsFunnelStageSuccess) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]any{}
	if true {
		toSerialize["value"] = o.Value
	}
	if true {
		toSerialize["lastUpdatedAt"] = o.LastUpdatedAt
	}
	return json.Marshal(toSerialize)
}

func (o PredictionsFunnelStageSuccess) String() string {
	out := ""
	out += fmt.Sprintf("  value=%v\n", o.Value)
	out += fmt.Sprintf("  lastUpdatedAt=%v\n", o.LastUpdatedAt)
	return fmt.Sprintf("PredictionsFunnelStageSuccess {\n%s}", out)
}

type NullablePredictionsFunnelStageSuccess struct {
	value *PredictionsFunnelStageSuccess
	isSet bool
}

func (v NullablePredictionsFunnelStageSuccess) Get() *PredictionsFunnelStageSuccess {
	return v.value
}

func (v *NullablePredictionsFunnelStageSuccess) Set(val *PredictionsFunnelStageSuccess) {
	v.value = val
	v.isSet = true
}

func (v NullablePredictionsFunnelStageSuccess) IsSet() bool {
	return v.isSet
}

func (v *NullablePredictionsFunnelStageSuccess) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullablePredictionsFunnelStageSuccess(val *PredictionsFunnelStageSuccess) *NullablePredictionsFunnelStageSuccess {
	return &NullablePredictionsFunnelStageSuccess{value: val, isSet: true}
}

func (v NullablePredictionsFunnelStageSuccess) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullablePredictionsFunnelStageSuccess) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}
