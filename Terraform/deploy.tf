terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "kewtfstate"
    container_name       = "tfstate"
    key                  = "terraform.azure.demo.tfstate"
  }
}

provider "azurerm" {
  features {}
}

# Create a resoruce gorup and create the storage account
resource "azurerm_resource_group" "example" {
  name     = "kewazuredemotf"
  location = "australiaeast"
}

# commented out to show terraform plan
resource "azurerm_storage_account" "example" {
  name                     = "kewazuredemosa"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "demo"
  }
}