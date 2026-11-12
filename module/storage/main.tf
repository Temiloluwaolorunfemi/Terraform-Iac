resource random_string "main" {
  length  = 6
  upper   = false
  special = false
}

resource "azurerm_resource_group" "main" {
  name     = "rg-${random_string.main.result}"
  location = var.location
}

resource "azurerm_storage_account" "main" {
  name                     = "st${random_string.main.result}"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate-${random_string.main.result}"
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}

resource "azurerm_role_assignment" "main" {
  scope                = azurerm_storage_account.main.id
  role_definition_name = "Storage Blob Data owner"
  principal_id         = var.principal_id
}