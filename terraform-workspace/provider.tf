terraform {
  required_providers {
    tfe = {
      version = "~> 0.27.0"
    }
  }
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "chaining"

    workspaces {
      name = "chaining-terraform-workspace"
    }
  }
}



# provider "tfe" {
#   hostname = var.hostname
#   version  = "~> 0.27.0"
# }