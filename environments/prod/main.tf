terraform {
   required_providers {
     aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
     }
   }
}

provider "aws" {
   region = "ap-south-1"
}

module "dev_iam_user" {
   source = "../../modules/iam"
   user_name = var.user_name
}

module "bucket_name" {
   source = "../../modules/s3"
   bucket_name = var.bucket_name
}

module "vpc_project" {
   source = "../../modules/vpc"
   cidr_block = var.cidr_block
}
