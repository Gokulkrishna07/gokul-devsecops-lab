provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "lab" {
  name     = "devsecops-lab-rg"
  location = "East US"
}

resource "azurerm_storage_account" "labstorage" {
  name                     = "devsecopslabstorage123"
  resource_group_name      = azurerm_resource_group.lab.name
  location                 = azurerm_resource_group.lab.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  allow_blob_public_access   = false
  enable_https_traffic_only  = true
  min_tls_version            = "TLS1_2"

  blob_properties {
    delete_retention_policy {
      days = 7
    }
  }
}