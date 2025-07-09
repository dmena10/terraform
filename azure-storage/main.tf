terraform {

    required_version = ">= 0.12"
    required_providers {
        aws = {
        source  = "hashicorp/azurerm"
        version = "~> 3.0"
        }
    }  
}
provider "azurerm" {
  features {}

}