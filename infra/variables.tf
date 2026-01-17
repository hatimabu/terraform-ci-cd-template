variable "instance_type" {
  description = "Instance type specification (demo only)"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID specification (demo only)"
  type        = string
  default     = "ami-demo-12345"
}

variable "instance_name" {
  description = "Name for the instance"
  type        = string
  default     = "terraform-ci-cd-demo-instance"
}

variable "config_file_path" {
  description = "Path for the infrastructure configuration file"
  type        = string
  default     = "./infrastructure.json"
}