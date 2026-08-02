variable "japnoorVnet" {}

resource "azurerm_virtual_network" "japnoorVnet" {
for_each = var.japnoorVnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
}
