output "public_ip" {
  value = azurerm_public_ip.main.ip_address
}

output "private_ip" {
  value = azurerm_linux_virtual_machine.main.private_ip_address
}