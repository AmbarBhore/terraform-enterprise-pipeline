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
