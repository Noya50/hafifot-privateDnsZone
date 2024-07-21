output "name" {
  value       = azurerm_private_dns_zone.this.name
  description = "The name of the private dns zone."
}

output "id" {
  value       = azurerm_private_dns_zone.this.id
  description = "The id of the private dns zone."
}

output "resource_group_name" {
  value       = azurerm_private_dns_zone.this.resource_group_name
  description = "The name of the resource group of the private dns zone."
}
