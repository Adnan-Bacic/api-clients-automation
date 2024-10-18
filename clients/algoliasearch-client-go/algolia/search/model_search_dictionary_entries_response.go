// Code generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation. DO NOT EDIT.
package search

import (
	"encoding/json"
	"fmt"
)

// SearchDictionaryEntriesResponse struct for SearchDictionaryEntriesResponse.
type SearchDictionaryEntriesResponse struct {
	// Dictionary entries matching the search criteria.
	Hits []DictionaryEntry `json:"hits"`
	// Requested page of the API response.  Algolia uses `page` and `hitsPerPage` to control how search results are displayed ([paginated](https://www.algolia.com/doc/guides/building-search-ui/ui-and-ux-patterns/pagination/js/)).  - `hitsPerPage`: sets the number of search results (_hits_) displayed per page. - `page`: specifies the page number of the search results you want to retrieve. Page numbering starts at 0, so the first page is `page=0`, the second is `page=1`, and so on.  For example, to display 10 results per page starting from the third page, set `hitsPerPage` to 10 and `page` to 2.
	Page int32 `json:"page"`
	// Number of results (hits).
	NbHits int32 `json:"nbHits"`
	// Number of pages of results.
	NbPages int32 `json:"nbPages"`
}

// NewSearchDictionaryEntriesResponse instantiates a new SearchDictionaryEntriesResponse object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed.
func NewSearchDictionaryEntriesResponse(hits []DictionaryEntry, page int32, nbHits int32, nbPages int32) *SearchDictionaryEntriesResponse {
	this := &SearchDictionaryEntriesResponse{}
	this.Hits = hits
	this.Page = page
	this.NbHits = nbHits
	this.NbPages = nbPages
	return this
}

// NewEmptySearchDictionaryEntriesResponse return a pointer to an empty SearchDictionaryEntriesResponse object.
func NewEmptySearchDictionaryEntriesResponse() *SearchDictionaryEntriesResponse {
	return &SearchDictionaryEntriesResponse{}
}

// GetHits returns the Hits field value.
func (o *SearchDictionaryEntriesResponse) GetHits() []DictionaryEntry {
	if o == nil {
		var ret []DictionaryEntry
		return ret
	}

	return o.Hits
}

// GetHitsOk returns a tuple with the Hits field value
// and a boolean to check if the value has been set.
func (o *SearchDictionaryEntriesResponse) GetHitsOk() ([]DictionaryEntry, bool) {
	if o == nil {
		return nil, false
	}
	return o.Hits, true
}

// SetHits sets field value.
func (o *SearchDictionaryEntriesResponse) SetHits(v []DictionaryEntry) *SearchDictionaryEntriesResponse {
	o.Hits = v
	return o
}

// GetPage returns the Page field value.
func (o *SearchDictionaryEntriesResponse) GetPage() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.Page
}

// GetPageOk returns a tuple with the Page field value
// and a boolean to check if the value has been set.
func (o *SearchDictionaryEntriesResponse) GetPageOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.Page, true
}

// SetPage sets field value.
func (o *SearchDictionaryEntriesResponse) SetPage(v int32) *SearchDictionaryEntriesResponse {
	o.Page = v
	return o
}

// GetNbHits returns the NbHits field value.
func (o *SearchDictionaryEntriesResponse) GetNbHits() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.NbHits
}

// GetNbHitsOk returns a tuple with the NbHits field value
// and a boolean to check if the value has been set.
func (o *SearchDictionaryEntriesResponse) GetNbHitsOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.NbHits, true
}

// SetNbHits sets field value.
func (o *SearchDictionaryEntriesResponse) SetNbHits(v int32) *SearchDictionaryEntriesResponse {
	o.NbHits = v
	return o
}

// GetNbPages returns the NbPages field value.
func (o *SearchDictionaryEntriesResponse) GetNbPages() int32 {
	if o == nil {
		var ret int32
		return ret
	}

	return o.NbPages
}

// GetNbPagesOk returns a tuple with the NbPages field value
// and a boolean to check if the value has been set.
func (o *SearchDictionaryEntriesResponse) GetNbPagesOk() (*int32, bool) {
	if o == nil {
		return nil, false
	}
	return &o.NbPages, true
}

// SetNbPages sets field value.
func (o *SearchDictionaryEntriesResponse) SetNbPages(v int32) *SearchDictionaryEntriesResponse {
	o.NbPages = v
	return o
}

func (o SearchDictionaryEntriesResponse) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]any{}
	if true {
		toSerialize["hits"] = o.Hits
	}
	if true {
		toSerialize["page"] = o.Page
	}
	if true {
		toSerialize["nbHits"] = o.NbHits
	}
	if true {
		toSerialize["nbPages"] = o.NbPages
	}
	serialized, err := json.Marshal(toSerialize)
	if err != nil {
		return nil, fmt.Errorf("failed to marshal SearchDictionaryEntriesResponse: %w", err)
	}

	return serialized, nil
}

func (o SearchDictionaryEntriesResponse) String() string {
	out := ""
	out += fmt.Sprintf("  hits=%v\n", o.Hits)
	out += fmt.Sprintf("  page=%v\n", o.Page)
	out += fmt.Sprintf("  nbHits=%v\n", o.NbHits)
	out += fmt.Sprintf("  nbPages=%v\n", o.NbPages)
	return fmt.Sprintf("SearchDictionaryEntriesResponse {\n%s}", out)
}
