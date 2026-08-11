terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "japnoor_rg"
    storage_account_name = "japnoorstorage"                             
    container_name       = "japnoorcontainer"                               
    key                  = "modules.tfstate"                
  }
}


provider "azurerm" {
features {}
}
