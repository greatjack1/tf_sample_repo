
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
}

variable "account_id" {
  type = string
}

provider "aws" {
  assume_role {
    role_arn  = "arn:aws:iam::${var.account_id}:role/yaakov-terraform-assume-role"
  }
  region = "us-east-1"
}


module "Auth" {
    source = "./modules/Auth"
}

module "Compute" {
    source = "./modules/Compute"
}

module "EventStreams" {
    source = "./modules/EventStreams"
}

module "Global" {
    source = "./modules/Global"
}

module "Network" {
    source = "./modules/Network"
}

module "Storage" {
    source = "./modules/Storage"
}
