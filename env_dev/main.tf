provider "azurerm" {
  subscription_id = var.subscription_id
  features        {}
}

module "azure_vm" {
  source = "../module/azure_vm"

  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
  object_id       = var.object_id
}
