output "rg_name" {
  value       = azurerm_resource_group.myrg.name
  description = "Le nom du groupe de ressource"
}
output "vnet_name" {
  value       = azurerm_virtual_network.myvnet.name
  description = "Le nom du réseau virtuel"
}
output "vnetrange" {
  description = "Address range for deployment vnet"
  value       = azurerm_virtual_network.myvnet.address_space
}