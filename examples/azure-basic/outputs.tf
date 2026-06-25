output "resource_group_name" {
  description = "Name of the Azure resource group."
  value       = azurerm_resource_group.main.name
}

output "virtual_network_name" {
  description = "Name of the Azure virtual network."
  value       = azurerm_virtual_network.main.name
}

output "workload_subnet_id" {
  description = "ID of the workload subnet."
  value       = azurerm_subnet.workload.id
}

output "storage_account_name" {
  description = "Name of the secured Azure storage account."
  value       = azurerm_storage_account.main.name
}
