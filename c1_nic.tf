resource "azurerm_network_interface" "nic-demo2-ref" {
  name                = "nic-demo2-via-tf"
  location            = azurerm_resource_group.rg-demo2-ref.location
  resource_group_name = azurerm_resource_group.rg-demo2-ref.name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet-demo2-ref.id
    private_ip_address_allocation = "dynamic"
    public_ip_address_id          = azurerm_public_ip.pip-demo2-ref.id
  }

}
