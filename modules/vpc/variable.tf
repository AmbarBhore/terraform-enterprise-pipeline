variable "cidr_block" { 
  description = "cidr value for project vpc"
  type = string
}

variable "public_subnet_cidr_block" {
  description = "cidr value for public subnet"
  type = string
}

variable "private_subnet_cidr_block" {
  description = "cidr value for private subnet"
  type = string
}

variable "tags" {
   type = map(string)
   default = {}
}

variable "availability_az" {
    type = map(string)
    description = "map of subnet types for each availability zones"
}
