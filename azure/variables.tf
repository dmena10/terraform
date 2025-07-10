variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
  default     = "East US"
}

variable "account_tier" {
  description = "The performance tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"
}

variable "resource_group_name" {
  description = "The name of the resource group where the storage account will be created."
  type        = string
  default     = "rg-terrafrom"
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
  default     = "menaterraform"
}

variable "container_name" {
  description = "The name of the storage container."
  type        = string
  default     = "container-terraform"
}