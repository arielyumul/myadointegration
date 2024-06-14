provider "aws" {
  region = var.region
  ignore_tags {
    keys = ["cost-centre"]
  }
}

terraform {
  cloud {
    organization = "Foodstuffs-South-Island"

    workspaces {
      name = WORKSPACE_NAME
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.4.0"
    }
  }
  required_version = ">= 1.5.0"
}