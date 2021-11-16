terraform {
  backend "s3" {
    bucket = "Ramarjun"
    key = "backend.tf"
    region = "ap-south-1"
    
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAUZBJNUI7NTZDR357"
  secret_key = "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"

}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "Ramarjun"
  acl    = "private"

  tags = {
    Name        = "Ramarjun"
    Environment = "OPS"
  }
}
