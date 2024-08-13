terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "terraformstatefiletest"
    key            = "count"
    region         = "us-east-1"
    dynamodb_table = "roboshoplocking"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
