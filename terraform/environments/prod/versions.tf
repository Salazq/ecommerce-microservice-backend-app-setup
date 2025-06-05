terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.1.3"
  
  backend "azurerm" {
    resource_group_name  = "VM"
    storage_account_name = "vmrecursos"
    container_name       = "tfstate"
    key                  = "prod-aks.tfstate"
  }
}

provider "azurerm" {
  features {}
}