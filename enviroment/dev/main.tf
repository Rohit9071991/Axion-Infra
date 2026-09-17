module "azurerm_resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rg-details
}

module "azurerm_virtual_network" {
  source     = "../../modules/azurerm_virtual_network"
  vnets      = var.vnet_details
  depends_on = [module.azurerm_resource_group]
}

module "azurerm_subnet" {
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnet_details
  depends_on = [module.azurerm_virtual_network]
}

module "azurerm_public_ip" {
  source     = "../../modules/azurerm_public_ip"
  pips       = var.pip_details
  depends_on = [module.azurerm_resource_group]
}

module "azurerm_network_interface" {
  source     = "../../modules/azurerm_network_interface"
  nics       = var.nic_details
  depends_on = [module.azurerm_subnet, module.azurerm_public_ip]
}

module "azurerm_virtual_machine" {
  source     = "../../modules/azurerm_virtual_machine"
  vms        = var.vm_details
  depends_on = [module.azurerm_network_interface]
}