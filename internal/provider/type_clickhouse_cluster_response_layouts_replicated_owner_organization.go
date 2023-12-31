// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import "github.com/hashicorp/terraform-plugin-framework/types"

type ClickhouseClusterResponseLayoutsReplicatedOwnerOrganization struct {
	AutoCharge        types.Bool   `tfsdk:"auto_charge"`
	Blocked           types.Bool   `tfsdk:"blocked"`
	BlockedAPI        types.Bool   `tfsdk:"blocked_api"`
	BlockedPassword   types.Bool   `tfsdk:"blocked_password"`
	CompanyName       types.String `tfsdk:"company_name"`
	EmailDomain       types.String `tfsdk:"email_domain"`
	Expired           types.Bool   `tfsdk:"expired"`
	ID                types.String `tfsdk:"id"`
	IDDefaultUserRole types.String `tfsdk:"id_default_user_role"`
	IDOwner           types.String `tfsdk:"id_owner"`
	Name              types.String `tfsdk:"name"`
	Opened            types.Bool   `tfsdk:"opened"`
	Trial             types.Bool   `tfsdk:"trial"`
	TrialExpiry       types.String `tfsdk:"trial_expiry"`
}
