terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
    }
  }
}

variable "LOCAL_TFE_TOKEN" {}
variable set_name1 {
  type = string
}
variable set_name2 {
  type = string
}

resource "tfe_provider_set" "test1" {
  name            = var.set_name1
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
  name            = var.set_name2
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