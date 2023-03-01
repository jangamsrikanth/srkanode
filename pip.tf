resource "azurerm_public_ip" "Publicipnew1" {
  name                = "publicip02"
  resource_group_name = azurerm_resource_group.testrg2.name
  location            = azurerm_resource_group.testrg2.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}