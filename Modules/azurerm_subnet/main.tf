variable "japnoorSubnet" {}

resource "azurerm_subnet" "japnoorSubnet" {
    for_each = var.japnoorSubnet
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}
