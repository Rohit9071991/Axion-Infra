terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.5.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5c191625-e715-4b44-94b2-b03c9bbb5c83"
}