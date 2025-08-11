variable "aws_region" {
  description = "AWS region to deploy resources in"
  type = string
}

variable "aws_access_key" {
  description = "AWS access key"
  type = string
  sensitive = true
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type = string
  sensitive = true
}

variable "bucket_name" {
  description = "name of the bucket"
  type = string
}
