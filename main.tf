terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket ="mybuckethyd-new"
    key = "terraform.tfstate"
    region= "us-east-1"
  }
}

# provider block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

# resource block
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "main"
  }

}

