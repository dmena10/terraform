terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

backend "azurerm" {
    resource_group_name  = "terrafrom-state"
    storage_account_name = "dmenaterraformstate"
    container_name       = "remote-state"
    key                  = "azure-vnet/terraform.tfstate"
  }
  
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}