terraform {
   backend "s3" {
      bucket = "enterprise-state-managing-bucket"
      key = "terraform.tfstate"
      region = "ap-south-1"
   }
}
