terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "aws-sandbox"
}

provider "azurerm" {
  features {

  }
}

provider "digitalocean" {

}
