
terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
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
