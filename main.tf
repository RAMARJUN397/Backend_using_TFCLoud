# Install aws-cli
#aws configure command use and connect terraform.
#after that create two tf files main contain s3 creating code,state.tf contains backend code. 

terraform {
  backend "s3" {
    bucket = "backenddemo"
    key = "terraform.tfstate"
    region = "ap-south-1"
    encrypt= "false"

  }
}



# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAUZBJNUI7NTZDR357"
  secret_key = "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"

}

#Aws s3bucket
resource "aws_s3_bucket" "terraformbackend" {
  bucket = "arjunram"
  acl    = "private"

  tags = {
    Name        = "arjunram"
    Environment = "OPS"
  }
}
