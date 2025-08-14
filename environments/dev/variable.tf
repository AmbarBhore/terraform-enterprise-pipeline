variable "user_name" {
  description = "IAM user name for the dev environment"
  type        = string
}

variable "bucket_name" {
  description = "This is bucket name variable"
  type = string
}

variable "cidr_block" {
  description = "Thihs is cidr block for vpc block"
  type = string
}

variable "public_subnet_cidr_block" {
   description= "This CIDR block for public subnet"
   type = string
}
