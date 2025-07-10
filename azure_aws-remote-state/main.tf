terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.35.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Owner       = "danielmena"
      ManagedBy   = "terraform"
    }
  }
}

provider "azurerm" {
  features {}
}