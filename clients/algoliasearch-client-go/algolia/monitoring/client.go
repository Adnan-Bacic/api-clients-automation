// File generated by OpenAPI Generator (https://openapi-generator.tech), manual changes will be lost - read more on https://github.com/algolia/api-clients-automation.
package monitoring

import (
	"bytes"
	"compress/gzip"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"log"
	"net/http"
	"net/http/httputil"
	"net/url"
	"reflect"
	"regexp"
	"runtime"
	"strings"
	"time"

	"github.com/go-playground/validator/v10"

	"github.com/algolia/algoliasearch-client-go/v4/algolia/call"
	"github.com/algolia/algoliasearch-client-go/v4/algolia/compression"
	"github.com/algolia/algoliasearch-client-go/v4/algolia/transport"
)

var jsonCheck = regexp.MustCompile(`(?i:(?:application|text)/(?:vnd\.[^;]+\+)?json)`)

// APIClient manages communication with the Algolia Monitoring API API v1.0.0
// In most cases there should be only one, shared, APIClient.
type APIClient struct {
	appID     string
	cfg       *Configuration
	transport *transport.Transport
}

// NewClient creates a new API client with appID and apiKey.
func NewClient(appID, apiKey string) (*APIClient, error) {
	return NewClientWithConfig(Configuration{
		Configuration: transport.Configuration{
			AppID:         appID,
			ApiKey:        apiKey,
			DefaultHeader: make(map[string]string),
			UserAgent:     getUserAgent(),
			Debug:         false,
			Requester:     transport.NewDefaultRequester(nil),
		},
	})
}

// NewClientWithConfig creates a new API client with the given configuration to fully customize the client behaviour.
func NewClientWithConfig(cfg Configuration) (*APIClient, error) {
	var hosts []*transport.StatefulHost

	if cfg.AppID == "" {
		return nil, errors.New("`appId` is missing.")
	}
	if cfg.ApiKey == "" {
		return nil, errors.New("`apiKey` is missing.")
	}
	if len(cfg.Hosts) == 0 {
		hosts = getDefaultHosts()
	} else {
		for _, h := range cfg.Hosts {
			hosts = append(hosts, transport.NewStatefulHost(h, call.IsReadWrite))
		}
	}
	if cfg.Requester == nil {
		cfg.Requester = transport.NewDefaultRequester(&cfg.ConnectTimeout)
	}
	if cfg.UserAgent == "" {
		cfg.UserAgent = getUserAgent()
	}

	return &APIClient{
		appID: cfg.AppID,
		cfg:   &cfg,
		transport: transport.New(
			hosts,
			cfg.Requester,
			cfg.ReadTimeout,
			cfg.WriteTimeout,
			cfg.ConnectTimeout,
			cfg.Compression,
		),
	}, nil
}

func getDefaultHosts() []*transport.StatefulHost {
	return []*transport.StatefulHost{transport.NewStatefulHost("status.algolia.com", call.IsReadWrite)}
}

func getUserAgent() string {
	return fmt.Sprintf("Algolia for Go (4.0.0-alpha.42); Go (%s); Monitoring (4.0.0-alpha.42)", runtime.Version())
}

// parameterToString convert any parameters to string.
func parameterToString(obj any) string {
	if reflect.TypeOf(obj).Kind() == reflect.Slice {
		return strings.Trim(strings.ReplaceAll(fmt.Sprint(obj), " ", ","), "[]")
	} else if t, ok := obj.(time.Time); ok {
		return t.Format(time.RFC3339)
	}

	return fmt.Sprintf("%v", obj)
}

// AddDefaultHeader adds a new HTTP header to the default header in the request.
func (c *APIClient) AddDefaultHeader(key string, value string) {
	c.cfg.DefaultHeader[key] = value
}

// callAPI do the request.
func (c *APIClient) callAPI(request *http.Request, useReadTransporter bool) (*http.Response, error) {
	if c.cfg.Debug {
		dump, err := httputil.DumpRequestOut(request, true)
		if err != nil {
			return nil, err
		}
		log.Printf("\n%s\n", string(dump))
	}

	callKind := call.Write
	if useReadTransporter || request.Method == http.MethodGet {
		callKind = call.Read
	}

	resp, err := c.transport.Request(request.Context(), request, callKind)
	if err != nil {
		return nil, err
	}

	if c.cfg.Debug {
		dump, err := httputil.DumpResponse(resp, true)
		if err != nil {
			return nil, err
		}
		log.Printf("\n%s\n", string(dump))
	}
	return resp, nil
}

// Allow modification of underlying config for alternate implementations and testing
// Caution: modifying the configuration while live can cause data races and potentially unwanted behavior.
func (c *APIClient) GetConfiguration() *Configuration {
	return c.cfg
}

// prepareRequest build the request.
func (c *APIClient) prepareRequest(
	ctx context.Context,
	path string, method string,
	postBody any,
	headerParams map[string]string,
	queryParams url.Values,
) (req *http.Request, err error) {
	contentType := "application/json"

	body, err := setBody(postBody, contentType, c.cfg.Compression)
	if err != nil {
		return nil, err
	}

	// Setup path and query parameters
	url, err := url.Parse(path)
	if err != nil {
		return nil, err
	}

	// Adding Query Param
	query := url.Query()
	for k, v := range queryParams {
		for _, iv := range v {
			query.Add(k, iv)
		}
	}

	// Encode the parameters.
	url.RawQuery = query.Encode()

	// Generate a new request

	// weird nil typing
	var bodyReader io.Reader
	if body != nil {
		bodyReader = body
	}
	req, err = http.NewRequest(method, url.String(), bodyReader)
	if err != nil {
		return nil, err
	}

	// add header parameters, if any
	if len(headerParams) > 0 {
		for h, v := range headerParams {
			req.Header.Add(h, v)
		}
	}

	// Add the user agent to the request.
	req.Header.Add("User-Agent", c.cfg.UserAgent)
	req.Header.Add("X-Algolia-Application-Id", c.cfg.AppID)
	req.Header.Add("X-Algolia-API-Key", c.cfg.ApiKey)
	req.Header.Add("Content-Type", contentType)
	req.Header.Add("Accept", contentType)

	if ctx != nil {
		// add context to the request
		req = req.WithContext(ctx)
	}

	for header, value := range c.cfg.DefaultHeader {
		req.Header.Add(header, value)
	}

	return req, nil
}

func (c *APIClient) decode(v any, b []byte, contentType string) error {
	if len(b) == 0 {
		return nil
	}
	if s, ok := v.(*string); ok {
		*s = string(b)
		return nil
	}
	if jsonCheck.MatchString(contentType) {
		if actualObj, ok := v.(interface{ GetActualInstance() any }); ok { // oneOf, anyOf schemas
			if unmarshalObj, ok := actualObj.(interface{ UnmarshalJSON([]byte) error }); ok { // make sure it has UnmarshalJSON defined
				if err := unmarshalObj.UnmarshalJSON(b); err != nil {
					return err
				}
			} else {
				return errors.New("Unknown type with GetActualInstance but no unmarshalObj.UnmarshalJSON defined")
			}
		} else if err := json.Unmarshal(b, v); err != nil { // simple model
			return err
		}
		return nil
	}
	return errors.New("undefined response type")
}

// Prevent trying to import "fmt".
func reportError(format string, a ...any) error {
	return fmt.Errorf(format, a...)
}

// A wrapper for strict JSON decoding.
func newStrictDecoder(data []byte) *json.Decoder { //nolint:unused
	dec := json.NewDecoder(bytes.NewBuffer(data))
	dec.DisallowUnknownFields()
	return dec
}

// A wrapper for validating a struct, returns nil if value is not a struct.
func validateStruct(v any) error { //nolint:unused
	err := validator.New().Struct(v)
	validationErrors, ok := err.(validator.ValidationErrors)
	if ok && len(validationErrors) > 0 {
		return validationErrors
	}

	return nil
}

// Set request body from an any.
func setBody(body any, contentType string, c compression.Compression) (*bytes.Buffer, error) {
	if body == nil {
		return nil, nil
	}

	bodyBuf := &bytes.Buffer{}
	var err error

	switch c {
	case compression.GZIP:
		gzipWriter := gzip.NewWriter(bodyBuf)
		defer gzipWriter.Close()
		err = json.NewEncoder(gzipWriter).Encode(body)
	default:
		if reader, ok := body.(io.Reader); ok {
			_, err = bodyBuf.ReadFrom(reader)
		} else if b, ok := body.([]byte); ok {
			_, err = bodyBuf.Write(b)
		} else if s, ok := body.(string); ok {
			_, err = bodyBuf.WriteString(s)
		} else if s, ok := body.(*string); ok {
			_, err = bodyBuf.WriteString(*s)
		} else if jsonCheck.MatchString(contentType) {
			err = json.NewEncoder(bodyBuf).Encode(body)
		}
	}

	if err != nil {
		return nil, err
	}

	if bodyBuf.Len() == 0 {
		err = fmt.Errorf("Invalid body type %s\n", contentType)
		return nil, err
	}
	return bodyBuf, nil
}

type APIError struct {
	Message string
	Status  int
}

func (e APIError) Error() string {
	return fmt.Sprintf("API error [%d] %s", e.Status, e.Message)
}
