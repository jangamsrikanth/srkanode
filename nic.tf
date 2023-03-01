resource "azurerm_network_interface" "nictest1" {
  name                = "nic002"
  location            = azurerm_resource_group.testrg2.location
  resource_group_name = azurerm_resource_group.testrg2.name

  ip_configuration {
    name                          = "test001"
    subnet_id                     = azurerm_subnet.subnettest1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id =azurerm_public_ip.Publicipnew1.id 
  }
}