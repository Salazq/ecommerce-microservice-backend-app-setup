terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0"
  
  backend "azurerm" {
    resource_group_name  = "VM"
    storage_account_name = "vmrecursos"
    container_name       = "tfstate"
    key                  = "staging-aks.tfstate"
  }
}

provider "azurerm" {
  features {}
}