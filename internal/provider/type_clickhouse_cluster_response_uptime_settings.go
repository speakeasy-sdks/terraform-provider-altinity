// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import "github.com/hashicorp/terraform-plugin-framework/types"

type ClickhouseClusterResponseUptimeSettings struct {
	InactiveHours types.Int64                                     `tfsdk:"inactive_hours"`
	Schedule      ClickhouseClusterResponseUptimeSettingsSchedule `tfsdk:"schedule"`
}
