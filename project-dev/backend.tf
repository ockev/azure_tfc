terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "~>4.0"
    }
  }

    backend "remote" {
    hostname = "app.terraform.io"
    organization = "koconnor"

    workspaces {
      name = "Azure_TFC_Prod"
    }
  }
}

provider "azurerm" {
  features {}
}