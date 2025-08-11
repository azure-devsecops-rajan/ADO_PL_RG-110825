terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg" 
    storage_account_name = "strgeg1qwefc"                                 
    container_name       = "tfstate"                                  
    key                  = "prod.tfstate"                
  }
}

provider "azurerm" {
  subscription_id = "98d972ed-e21e-446e-9886-a62d770b1fef"
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "ado-rg"
  location = "West Europe"
}
