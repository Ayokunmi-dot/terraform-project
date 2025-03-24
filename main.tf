provider "aws" {
  region = "eu-west-2"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket = "anike-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "eu-west-2"
    profile = "default"
  }
}