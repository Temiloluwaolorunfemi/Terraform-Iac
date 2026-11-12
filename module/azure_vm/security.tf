resource "tls_private_key" "main" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "main" {
  name                = "kv-${random_string.suffix.result}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  enabled_for_disk_encryption = true
  tenant_id           = var.tenant_id
  purge_protection_enabled = false
  rbac_authorization_enabled = false
  sku_name            = "standard"

  access_policy = [
    {
      tenant_id = var.tenant_id
      object_id = data.azurerm_client_config.current.object_id
      application_id = null

      certificate_permissions = []

      key_permissions = [
        "Get"
      ]

      secret_permissions = [
        "Get",
        "List",
        "Set",
        "Delete",
        "Recover",
        "Purge"
      ]

      storage_permissions = [
        "Get"
      ]
    }
  ]
}

resource "azurerm_key_vault_secret" "ssh_private_key" {
  name         = "ssh-private-key"
  value        = trimspace(tls_private_key.main.private_key_pem)
  key_vault_id = azurerm_key_vault.main.id
}

resource "azurerm_key_vault_secret" "ssh_public_key" {
  name         = "ssh-public-key"
  value        = trimspace(tls_private_key.main.public_key_openssh)
  key_vault_id = azurerm_key_vault.main.id
}