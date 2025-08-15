resource "aws_vpc" "dev_vpc" {
   cidr_block = var.cidr_block
   tags       = var.tags
}

resource "aws_internet_gateway" "gw" {
   vpc_id = aws_vpc.dev_vpc.id
   tags = var.tags
}

resource "aws_subnet" "public" {
   vpc_id = aws_vpc.dev_vpc.id
   cidr_block = var.public_subnet_cidr_block
   tags = var.tags
}

resource "aws_subnet" "private" {
   vpc_id = aws_vpc.dev_vpc.id
   cidr_block = var.private_subnet_cidr_block
   tags = var.tags
}
