output "public_ip" {
  value = module.azure_vm.public_ip
}

output "private_ip" {
  value = module.azure_vm.private_ip
}