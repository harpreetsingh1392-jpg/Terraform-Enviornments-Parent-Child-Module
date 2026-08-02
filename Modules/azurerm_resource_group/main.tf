variable "japnoor_rg" {}

resource "azurerm_resource_group" "japnoor_rg" {
for_each = var.japnoor_rg
  name     = each.value.name
  location = each.value.location
}
