variable "project_name" {
  description = "Short project name used in Azure resource names."
  type        = string
  default     = "tf-cicd-lab"
}

variable "environment" {
  description = "Environment name used for tagging and resource names."
  type        = string
  default     = "dev"
}

variable "location" {
  description = "Azure region for the example resources."
  type        = string
  default     = "canadacentral"
}

variable "vnet_address_space" {
  description = "Address space for the demo virtual network."
  type        = string
  default     = "10.20.0.0/16"
}

variable "subnet_address_prefix" {
  description = "Address prefix for the workload subnet."
  type        = string
  default     = "10.20.1.0/24"
}

variable "tags" {
  description = "Extra tags to apply to taggable Azure resources."
  type        = map(string)
  default = {
    owner       = "student"
    cost_center = "learning"
  }
}
