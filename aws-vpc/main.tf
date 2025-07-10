terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

backend "s3" {
    bucket         = "danielmena-remote-state"
    key            = "aws-vpc/terraform.tfstate"
    region         = "us-east-1"
      } 
}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner = "dmena"
      Project = "terraform"
    }
  }
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}