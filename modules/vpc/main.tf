resource "aws_vpc" "project_vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = "project_vpc"
  }
}

resource "aws_internet_gateway" "gw" {
   vpc_id = aws_vpc.project_vpc.id
   tags = {
     Name = "project_IGW"
     Owner = "Ambar"
   }
}
