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

  # Demo mode configuration - skip authentication for template purposes
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_requesting_account_id  = true

  # Use dummy credentials for demonstration
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
}

resource "aws_s3_bucket" "demo" {
  bucket = var.bucket_name
}

# Security group for EC2 instance
resource "aws_security_group" "demo" {
  name_prefix = "terraform-ci-cd-demo-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Demo only - restrict in production
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 instance
resource "aws_instance" "demo" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }

  # Demo mode - skip key pair requirement
  key_name = null

  security_groups = [aws_security_group.demo.name]
}