resource "azurerm_resource_group" "myrg" {
  name = "${var.prefix_name}_${var.environment}_rg"
  location = "West Europe"
  tags     = var.tags
}
resource "azurerm_virtual_network" "myvnet" {
  name                = "${var.prefix_name}_${var.environment}_vnet"
  location            = azurerm_resource_group.myrg.location
  resource_group_name = azurerm_resource_group.myrg.name
  address_space       = var.vnet_range
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  count = 6
  name                 = "subnet_${count.index}_${var.is_public[count.index] ? "Public" : "Private"}"
  virtual_network_name = azurerm_virtual_network.myvnet.name
  resource_group_name  = azurerm_resource_group.myrg.name
  address_prefixes     = [cidrsubnet(var.address_of_subnet, 3, count.index + 1)]
}

#resource "azurerm_virtual_network_peering" "peer1" {
#  name                      = "peer1to2"
#  resource_group_name       = azurerm_resource_group.myrg.name
#  virtual_network_name      = azurerm_virtual_network.othervnet.name
#  remote_virtual_network_id = azurerm_virtual_network.othervnet.id
#}
#resource "azurerm_virtual_network_peering" "peer2" {
#  name                      = "peer2to1"
#  resource_group_name       = azurerm_resource_group.myrg.name
#  virtual_network_name      = azurerm_virtual_network.myvnet.name
#  remote_virtual_network_id = azurerm_virtual_network.myvnet.id
#}