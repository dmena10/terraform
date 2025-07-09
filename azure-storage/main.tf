terraform {

    required_version = ">= 0.13"
    required_providers {
        source  = "hashicorp/azurerm"
        version = "=3.0.0"
    }  
}
provider "azurerm" {
  features {}

}