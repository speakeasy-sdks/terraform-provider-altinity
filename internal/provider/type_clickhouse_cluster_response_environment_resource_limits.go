// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import "github.com/hashicorp/terraform-plugin-framework/types"

type ClickhouseClusterResponseEnvironmentResourceLimits struct {
	CPU           types.String `tfsdk:"cpu"`
	Memory        types.String `tfsdk:"memory"`
	Nodes         types.Int64  `tfsdk:"nodes"`
	Replicas      types.Int64  `tfsdk:"replicas"`
	Shards        types.Int64  `tfsdk:"shards"`
	Storage       types.String `tfsdk:"storage"`
	VolumeRescale types.Int64  `tfsdk:"volume_rescale"`
}
