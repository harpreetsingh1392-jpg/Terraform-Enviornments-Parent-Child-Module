module "japnoor_rg" {
  source = "../Modules/azurerm_resource_group"
  japnoor_rg = var.japnoor_rg
}

module "japnoorVnet" {
    depends_on = [ module.japnoor_rg ]
  source = "../Modules/azurerm_virtual_network"
  japnoorVnet = var.japnoorVnet
}

module "japnoorSubnet" {
    depends_on = [ module.japnoorVnet ]
    source = "../Modules/azurerm_subnet"
    japnoorSubnet = var.japnoorSubnet
  
}