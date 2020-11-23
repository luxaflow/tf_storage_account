resource "azurerm_storage_account" "storage_account" {
  name                      = var.name
  resource_group_name       = var.resource_group
  location                  = var.location
  account_tier              = var.tier
  account_replication_type  = var.replication_type
}

resource "azurerm_storage_container" "container" {
  count                 = length(var.containers)
  name                  = var.containers[count.index].name
  container_access_type = var.containers[count.index].access_type
  storage_account_name  = azurerm_storage_account.storage_account.name
}

resource "azurerm_storage_table" "tables" {
  count                 = length(var.tables)
  name                  = var.tables[count.index]
  storage_account_name  = azurerm_storage_account.storage_account.name
}