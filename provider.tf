terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.0"
    }
  }
  required_version = ">=1.2.0"
}
provider "aws" {
  region     = var.primary-region
  access_key = "AKIAVTZWC2GBZIWI6KB7"
  secret_key = "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"
}