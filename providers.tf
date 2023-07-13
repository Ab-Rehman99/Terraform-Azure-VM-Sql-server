# Configure the azurerm provider source and version requirements
terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "c7c5f0be-130d-4825-be3c-ec59a05226b9"
  tenant_id       = "f62bbecb-db55-423f-8a58-75d6f869e3fc"
  client_id       = "d88fdfd0-a3af-4af9-b862-0828bc4293cd"
  client_secret   = var.client_secret
}