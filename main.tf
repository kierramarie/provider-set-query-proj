terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.0.1"
    }
  }
}

variable "LOCAL_TFE_TOKEN" {}

resource "tfe_provider_set" "test1" {
  name            = "test-set1"
  description     = "Reusable provider config for selected workspaces"
  provider_source = "registry.terraform.io/hashicorp/aws"
  global          = true
  organization    = "hashicorp"

  provider_config_hcl = <<-EOT
  provider "aws" {
    region = "us-east-1"
  }
  EOT
}

resource "tfe_provider_set" "test2" {
  name            = "test-set2"
  description     = "Reusable provider config for selected workspaces"
  provider_source = "registry.terraform.io/hashicorp/aws"
  global          = true
  organization    = "hashicorp"

  provider_config_hcl = <<-EOT
  provider "aws" {
    region = "us-east-1"
  }
  EOT
}