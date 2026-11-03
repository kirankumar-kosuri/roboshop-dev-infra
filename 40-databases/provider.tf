terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.29.0"
    }
  }

   backend "s3" {
    bucket = "terraform-remote-state-bucket-trsb"
    key    = "roboshop-dev-databases"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
    region = "us-east-1"
}