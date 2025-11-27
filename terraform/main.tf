terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

 backend "s3" {
   region = "us-west-2"
   key    = "terraform.tfstate"
 }
}

provider "aws" {
  region = "ap-south-2"
}


resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}