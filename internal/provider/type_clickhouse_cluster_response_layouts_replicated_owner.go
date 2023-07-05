// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

package provider

import "github.com/hashicorp/terraform-plugin-framework/types"

type ClickhouseClusterResponseLayoutsReplicatedOwner struct {
	BackupTool     types.String                                                `tfsdk:"backup_tool"`
	Blocked        types.Bool                                                  `tfsdk:"blocked"`
	DarkTheme      types.Bool                                                  `tfsdk:"dark_theme"`
	Email          types.String                                                `tfsdk:"email"`
	ID             types.String                                                `tfsdk:"id"`
	IDOrganization types.String                                                `tfsdk:"id_organization"`
	IDRole         types.String                                                `tfsdk:"id_role"`
	Name           types.String                                                `tfsdk:"name"`
	Organization   ClickhouseClusterResponseLayoutsReplicatedOwnerOrganization `tfsdk:"organization"`
	Origins        types.String                                                `tfsdk:"origins"`
	Password       types.String                                                `tfsdk:"password"`
	Role           ClickhouseClusterResponseLayoutsReplicatedOwnerRole         `tfsdk:"role"`
}