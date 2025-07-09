terraform {

    required_version = ">= 0.13"
    required_providers {
        source = "hashicorp/azurerm"
        version = "2.35.0"
    }  
}
provider "azurerm" {
  features {}

}