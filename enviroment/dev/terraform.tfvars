rg-details = {
  rg1 = {
    name     = "tcs-rg"
    location = "East US"
  }
}

vnet_details = {
  vnet1 = {
    name                = "tcs-vnet"
    location            = "East US"
    resource_group_name = "tcs-rg"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet_details = {
  subnet1 = {
    name                 = "tcs-subnet"
    resource_group_name  = "tcs-rg"
    virtual_network_name = "tcs-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}

pip_details = {
  pip1 = {
    name                = "tcs-pip"
    location            = "East US"
    resource_group_name = "tcs-rg"
    allocation_method   = "Static"
  }
}

nic_details = {
  nic1 = {
    name                 = "tcs-nic"
    location             = "East US"
    resource_group_name  = "tcs-rg"
    subnet_name          = "tcs-subnet"
    virtual_network_name = "tcs-vnet"
    public_ip_name       = "tcs-pip"
    private_ip_address_allocation = "Dynamic"
    
  }
}

vm_details = {
  vm1 = {
    vm_name             = "tcs-vm"
    resource_group_name = "tcs-rg"
    location            = "East US"
    vm_size             = "Standard_B1s"
    admin_username      = "adminuser"
    admin_password      = "P@ssw0rd1234!"
    nicname            = "tcs-nic"
    # network_interface_id = data.azurerm_network_interface.nicdatablock["nic1"].id
    virtual_network_name = "tcs-vnet"
    subnet_name          = "tcs-subnet"
    os_disk_caching      = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "UbuntuServer"
    sku                  = "18.04-LTS"
    version              = "latest"


  }
}
