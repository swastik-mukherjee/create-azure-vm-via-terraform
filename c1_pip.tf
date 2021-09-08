resource "azurerm_public_ip" "pip-demo2-ref" {
  name                = "pip-demo2-via-tf"
  resource_group_name = azurerm_resource_group.rg-demo2-ref.name
  location            = azurerm_resource_group.rg-demo2-ref.location
  allocation_method   = "Static"

}
