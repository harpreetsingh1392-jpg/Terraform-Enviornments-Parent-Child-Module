japnoor_rg = {
    rg1 = {
        name = "japnoor_rg1"
        location = "West US"
    }

}
japnoorVnet = {

    Vnet1 = {
  name                = "japnoorVnet1"
  location            = "West US"
  resource_group_name = "japnoor_rg1"
  address_space       = ["10.1.0.0/16"]

    }
}
japnoorSubnet = {

   subnet1 = {
   name                 = "japnoorSubnet1"
   resource_group_name  = "japnoor_rg1"
   virtual_network_name = "japnoorVnet1"
   address_prefixes     = ["10.1.0.0/24"]
    }
}