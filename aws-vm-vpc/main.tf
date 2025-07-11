terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }


backend "s3" {
    bucket         = "danielmena-remote-state"
    key            = "aws-vm/terraform.tfstate"
    region         = "us-east-1"
      } 
}


provider "aws" {
    region = "us-east-1"

    default_tags {
        tags = {
            Owner       = "danielmena"
            managed_by = "terraform"
        }
    }
  }

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "danielmena-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}
