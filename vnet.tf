resource "azurerm_virtual_network" "testvnet002" {
  name                = "testvnet2"
  address_space       = ["192.168.0.0/16"]
  location            = azurerm_resource_group.testrg2.location
  resource_group_name = azurerm_resource_group.testrg2.name
}

resource "azurerm_subnet" "subnettest1" {
  name                 = "subnetB"
  resource_group_name  = azurerm_resource_group.testrg2.name
  virtual_network_name = azurerm_virtual_network.testvnet002.name
  address_prefixes     = ["192.168.0.0/24"]
}