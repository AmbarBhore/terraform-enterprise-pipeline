resource "aws_vpc" "dev_vpc" {
   cidr_block = var.cidr_block
   tags       = merge(var.tags, { Name = "dev-vpc" })
}

resource "aws_internet_gateway" "gw" {
   vpc_id = aws_vpc.dev_vpc.id
   tags = merge(var.tags, { Name = "dev-IGW" })
}

resource "aws_subnet" "public" {
   vpc_id = aws_vpc.dev_vpc.id
   cidr_block = var.public_subnet_cidr_block
   tags = merge(var.tags, { Name = "dev-public-subnet" })
   map_public_ip_on_launch = true
}

resource "aws_subnet" "private" {
   vpc_id = aws_vpc.dev_vpc.id
   cidr_block = var.private_subnet_cidr_block
   tags = merge(var.tags, { Name = "dev-private-subnet" })
}
