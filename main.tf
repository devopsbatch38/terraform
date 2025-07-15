terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}

  subscription_id = "5ce8f6e7-670b-4ecc-a32d-3ad5c4c3ccef"
  tenant_id       = "c7eccf1e-beae-4d60-bbe7-19652a04aac0"
}

resource "azurerm_resource_group" "jenkins_rg" {
  name     = "jenkins-resource-group"
  location = "East US"
  tags = {
    environment = "jenkins"
  }
}
