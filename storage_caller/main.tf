provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}

module "azure_vm" {
    source = "../module/storage"
    principal_id = var.principal_id
    subscription_id = var.subscription_id
}