terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.62"
    }
  }
  backend "s3" {
    bucket         = "tf-s3-testewill-001"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-dynamo-testewill-001"
    region         = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}
