// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package operations

import (
	"net/http"
)

type DeleteAPIClusterID1Request struct {
	ID string `pathParam:"style=simple,explode=false,name=id"`
}

type DeleteAPIClusterID12XXApplicationJSONMetadata struct {
	Changed bool `json:"changed"`
}

// DeleteAPIClusterID12XXApplicationJSON - OK
type DeleteAPIClusterID12XXApplicationJSON struct {
	Metadata DeleteAPIClusterID12XXApplicationJSONMetadata `json:"metadata"`
}

type DeleteAPIClusterID1Response struct {
	ContentType string
	StatusCode  int
	RawResponse *http.Response
	// OK
	DeleteAPIClusterID12XXApplicationJSONObject *DeleteAPIClusterID12XXApplicationJSON
}
