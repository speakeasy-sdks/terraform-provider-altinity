// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import "github.com/hashicorp/terraform-plugin-framework/types"

type ClickhouseClusterResponseEnvironmentKubeAuthOptions struct {
	CaCert     types.String `tfsdk:"ca_cert"`
	ClientCert types.String `tfsdk:"client_cert"`
	ClientKey  types.String `tfsdk:"client_key"`
	Type       types.String `tfsdk:"type"`
}
