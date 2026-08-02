variable "japnoorBastion" {}

resource "azurerm_bastion_host" "japnoorBastion" {
    for_each = var.japnoorBastion
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = each.value.name
    subnet_id            = each.value.subnet_id
    public_ip_address_id = each.value.public_ip_address_id
  }
}
