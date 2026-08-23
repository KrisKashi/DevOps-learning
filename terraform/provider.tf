terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

backend "s3" {
    bucket = "terraform-state-kris-800618367071-eu-west-2-an"
    key    = "terraform.tfstate"
    region = "eu-west-2"
    }
}

# Configure the AWS Provider
provider "aws" {
    region = "eu-west-2"
}

