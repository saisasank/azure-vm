resource "azurerm_virtual_network" "base_vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.common_rg
  address_space       = [var.vnet_cidr]
  tags = var.tags
  depends_on = [azurerm_resource_group.common_rg, azurerm_network_security_group.vnet_nsg]
}