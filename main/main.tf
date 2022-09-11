
terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
    }
  }
  required_version = "1.2"
}


module "Auth" {
    source = "Auth"
}

module "Compute" {
    source = "Compute"
}

module "EventStreams" {
    source = "EventStreams"
}

module "Global" {
    source = "Global"
}

module "Network" {
    source = "Network"
}

module "Storage" {
    source = "Storage"
}
