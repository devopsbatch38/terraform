provider "azurerm" {
  features = {}

  client_id       = "222fe6cf-c546-4539-b2c8-3eb59e5feed2"
  client_secret   = "dm18Q~29B1NTmY0o5FrPxyHaIIdFI6M~RsIdEcSB"
  tenant_id       = "c7eccf1e-beae-4d60-bbe7-19652a04aac0"
  subscription_id = "5ce8f6e7-670b-4ecc-a32d-3ad5c4c3ccef"
}

resource "azurerm_resource_group" "example" {
  name     = "rg-jenkins-test"
  location = "East US"
}
