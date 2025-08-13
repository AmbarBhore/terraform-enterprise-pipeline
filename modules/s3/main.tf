resource "aws_s3_bucket" "example" {
   bucket = var.bucket_name

   tags = {
      bucket = "logs"
      enviornment = "dev"
      location = "mumbai"
      team = "finance"
      owner = "DevOps"
      role = "Director"
      type = "logging"
   }
}
