output "storage_account_tables" {
  value       = { for t in azurerm_storage_table.tables : t.name => t.id }
  description = "Names of storage account tables"
}

output "storage_account_containter" {
  value       =  { for c in azurerm_storage_container.container : c.name => c.id }
  description = "Name of storage account containers"
}