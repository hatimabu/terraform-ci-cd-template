output "generated_bucket_name" {
  description = "Generated bucket name using random pet"
  value       = "demo-${random_pet.bucket_name.id}"
}

output "config_file_path" {
  description = "Path to the generated infrastructure configuration file"
  value       = local_file.infrastructure_config.filename
}

output "infrastructure_plan" {
  description = "Infrastructure configuration as JSON"
  value       = jsondecode(local_file.infrastructure_config.content)
}

output "demo_mode" {
  description = "Indicates this is running in demo mode"
  value       = true
}