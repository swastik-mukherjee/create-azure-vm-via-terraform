resource "azurerm_virtual_network" "vnet-demo2-ref" {
  name                = "vnet-demo2-via-tf"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg-demo2-ref.location
  resource_group_name = azurerm_resource_group.rg-demo2-ref.name
}
