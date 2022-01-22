locals {
  workspace_name = "${var.project_prefix}-${var.env}"
}



resource "tfe_workspace" "chaining-workspace" {
  name         = local.workspace_name
  organization = var.organization_name
  tag_names    = ["dev", "chaining"]
}

