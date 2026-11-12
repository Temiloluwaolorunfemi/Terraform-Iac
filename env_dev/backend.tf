terraform {
  backend "azurerm" {
    resource_group_name  = "rg-lcnz88"
    storage_account_name = "stlcnz88"
    container_name       = "tfstate-lcnz88"
    key                  = "terraform.tfstate"
  }
}
