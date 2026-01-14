variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "terraform-ci-cd-demo-bucket"
}

variable "aws_access_key_id" {
  description = "AWS Access Key ID (leave empty for demo mode)"
  type        = string
  default     = ""
  sensitive   = true
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key (leave empty for demo mode)"
  type        = string
  default     = ""
  sensitive   = true
}