terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    region = "ap-south-1"
    key    = "terraform.tfstate"
  }
}

provider "aws" {
  region = "ap-south-1"
}


resource "aws_s3_bucket" "example" {
  bucket = "mytf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}