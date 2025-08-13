terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "prod_iam_user" {
  source    = "../../modules/iam"
  user_name = var.user_name
}

module "prod_s3_bucket" {
  source      = "../../modules/s3"
  bucket_name = var.bucket_name
}
