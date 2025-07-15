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
}

resource "azurerm_resource_group" "jenkins_rg" {
  name     = "jenkins-resource-group"
  location = "East US"
  tags = {
    environment = "jenkins"
  }
}
