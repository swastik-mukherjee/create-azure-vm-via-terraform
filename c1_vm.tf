resource "azurerm_virtual_machine" "vm-demo2-ref" {
  name                = "vm-demo2-via-tf"
  resource_group_name = azurerm_resource_group.rg-demo2-ref.name
  location            = azurerm_resource_group.rg-demo2-ref.location
  vm_size             = "Standard_DS1_v2"
  #   admin_username        = "testuser"
  #   admin_password        = "Welcome123!"
  network_interface_ids = [azurerm_network_interface.nic-demo2-ref.id]
  #   os_disk = {
  #     name                 = "os-disk-via-tf"
  #     caching              = "ReadWrite"
  #     storage_account_type = "Standard_LRS"
  #   }
  storage_os_disk {
    name              = "Storage-Disk-via-tf"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "testvm"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }


  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }


  #   source_image = {
  #     publisher = "Oracle"
  #     offer     = "Oracle Linux"
  #     sku       = "8.3(LVM)"
  #     version   = "latest"
  #   }


}
