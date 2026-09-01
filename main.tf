terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  for_each = toset([
    "rg-arun-dev",
    "rg-arun-test",
    "rg-arun-stage",
    "rg-arun-prod"
  ])

  name     = each.value
  location = "Central India"
}