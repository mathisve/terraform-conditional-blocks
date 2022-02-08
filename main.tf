provider "aws" {
  region = "eu-central-1"
}

module "infrastructure" {
    source = "./module"

    create_private_subnet = false
}