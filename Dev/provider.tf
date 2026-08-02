terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }

  backend "azurerm" {
    resource_group_name = "harpreet_rg"
    storage_account_name = "harpreetstorage"                             
    container_name       = "harpreetcontainer"                               
    key                  = "modules.tfstate"                
  }
}


provider "azurerm" {
features {}
}
