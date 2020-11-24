# ----------------------------------------------------------------------------------------------------------------------
# Vnet - https://www.terraform.io/docs/providers/azurerm/r/network_security_group.html
# ----------------------------------------------------------------------------------------------------------------------
resource "azurerm_network_security_group" "vnet_nsg" {
  name                = var.vnet_nsg
  location            = var.location
  resource_group_name = var.common_rg

  tags = var.tags
  depends_on = [azurerm_resource_group.common_rg]  
}
