resource "aws_vpc" "dev_vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = "dev_vpc"
  }
}

resource "aws_internet_gateway" "gw" {
   vpc_id = aws_vpc.dev_vpc.id
   tags = {
     Name = "project_IGW"
     Owner = "Ambar"
   }
}

resource "aws_subnet" "public" {
   vpc_id = aws_vpc.dev_vpc.id
   cidr_block = var.public_subnet_cidr_block
   tags = {
      Name = "public_subnet"
      Owner = "Ambar"
   }
}
