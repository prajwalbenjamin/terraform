terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id   = "e61c9c1e-1f3b-4a27-bd84-1631b0c60c12"
  tenant_id         = "0ae51e19-07c8-4e4b-bb6d-648ee58410f4"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet_prajwal"
  address_space       = ["10.0.0.0/16"]
  location            = "centralindia" 
  resource_group_name = "jwf1kor"
}
