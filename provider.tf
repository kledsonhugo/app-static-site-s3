# PROVIDER
terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket         = "static-site-kledson-basso-tf-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "static-site-kledson-basso-table"
  }

}

# PROVIDER CONFIG
provider "aws" {
    region = "us-east-1"
}