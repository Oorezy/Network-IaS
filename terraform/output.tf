output "public_ip" {
  value = azurerm_public_ip.pip.ip_address
}

output "fqdn" {
  value = azurerm_public_ip.pip.fqdn
}

output "ssh_command" {
  value = "ssh ${var.admin_username}@${azurerm_public_ip.pip.fqdn}"
}