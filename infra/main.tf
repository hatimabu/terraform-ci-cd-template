terraform {
  required_providers {
    # No cloud providers - using local resources only
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

# Local resources - no cloud provider needed
resource "random_pet" "bucket_name" {
  length = 2
}

resource "local_file" "infrastructure_config" {
  filename = "${path.module}/infrastructure.json"
  content = jsonencode({
    resources = {
      s3_bucket = {
        name = "demo-${random_pet.bucket_name.id}"
        type = "storage"
      }
      ec2_instance = {
        name = var.instance_name
        type = var.instance_type
        ami  = var.ami_id
      }
    }
    metadata = {
      created_by = "terraform-ci-cd-template"
      demo_mode  = true
    }
  })
}