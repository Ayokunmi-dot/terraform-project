#configure aws provider
provider "aws" {
  region = "eu-west-2"
  profile = "default"
}

#stores the terraform state file to s3
terraform {
  backend "s3" {
    bucket = "anike-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "eu-west-2"
    profile = "default"
  }
}