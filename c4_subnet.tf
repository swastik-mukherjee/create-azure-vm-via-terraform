resource "azurerm_subnet" "subnet-demo2-ref" {
  name                 = "subnet-demo2-via-tf"
  virtual_network_name = azurerm_virtual_network.vnet-demo2-ref.name
  resource_group_name  = azurerm_resource_group.rg-demo2-ref.name
  address_prefixes     = ["10.0.0.0/24"]
}
