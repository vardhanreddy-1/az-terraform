terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>4.1"
    }
  }
}

provider "azurerm" {

  features {
  
  }
  subscription_id = "e32b3228-1a71-4448-8455-a68b1d306644"
}