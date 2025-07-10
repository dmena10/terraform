resource "azurerm_resource_group" "resource_group" {
  name     = "terrafrom-state"
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "dmenaterraformstate"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  blob_properties {
    versioning_enabled = true
  }
}

resource "azurerm_storage_container" "container" {
  name                  = "remote-state"
  storage_account_id    = azurerm_storage_account.storage_account.id
  container_access_type = "private"
}