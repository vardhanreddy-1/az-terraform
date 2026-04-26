
#Resource Group Creation
resource "azurerm_resource_group" "rg" {
  name = "terraform-rg"
  location = "eastus2"
}

#Create a virtual network
resource "azurerm_virtual_network" "vneta" {
  name                =   "vnet01"
  resource_group_name =   azurerm_resource_group.rg.name
  location            =   azurerm_resource_group.rg.location
  address_space       =   ["10.0.0.0/16"]


  subnet {
    name             = "subnet1"
    address_prefixes = ["10.0.0.0/24"]
  }
}