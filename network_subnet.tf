resource "azurerm_subnet" "azurevm_subnet" {
  name                 = var.vnet_subnet_name
  address_prefixes     = [var.vnet_subnet_cidr]
  resource_group_name  = var.common_rg
  virtual_network_name = var.vnet_name
  #service_endpoints    = ["Microsoft.Sql","Microsoft.EventHub","Microsoft.KeyVault"]
  depends_on           = [azurerm_resource_group.common_rg, azurerm_virtual_network.base_vnet]
}