output "publicip1" {
    value =azurerm_public_ip.Publicipnew1.ip_address
    description = "display public ip address"
}
   