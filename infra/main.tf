terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region

  # Skip credential validation in demo mode
  skip_metadata_api_check = true
  skip_region_validation  = true

  # Only require credentials if explicitly provided
  access_key = var.aws_access_key_id != "" ? var.aws_access_key_id : null
  secret_key = var.aws_secret_access_key != "" ? var.aws_secret_access_key : null
}

resource "aws_s3_bucket" "demo" {
  bucket = var.bucket_name
}