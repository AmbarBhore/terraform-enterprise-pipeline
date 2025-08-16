#resource "aws_vpc" "dev_vpc" {
#   cidr_block = var.cidr_block
#   tags       = merge(var.tags, { Name = "dev-vpc" })
#   
#   lifecycle {
#      create_before_destroy = true
#   }
#}
#
#resource "aws_internet_gateway" "gw" {
#   vpc_id = aws_vpc.dev_vpc.id
#   tags = merge(var.tags, { Name = "dev-IGW" })
#}
#
#resource "aws_subnet" "public" {
#   vpc_id = aws_vpc.dev_vpc.id
#   cidr_block = var.public_subnet_cidr_block
#   availability_zone = var.availability_az["public_subnet"]
#   tags = merge(var.tags, { Name = "dev-public-subnet" })
#   map_public_ip_on_launch = true
#}
#
#resource "aws_subnet" "private" {
#   vpc_id = aws_vpc.dev_vpc.id
#   cidr_block = var.private_subnet_cidr_block
#   availability_zone = var.availability_az["private_subnet"]
#   tags = merge(var.tags, { Name = "dev-private-subnet" })
#}
#
#resource "aws_route_table" "public_rt" {
#   vpc_id = aws_vpc.dev_vpc.id
#   
#   route {
#       cidr_block = "0.0.0.0/0"
#       gateway_id = aws_internet_gateway.gw.id
#   }
#   
#   tags = merge(var.tags, { Name = "Public_Route_Table" })
#}
#
#resource "aws_route_table_association" "public-rt-association" {
#   subnet_id = aws_subnet.public.id
#   route_table_id = aws_route_table.public_rt.id
#}
#
#resource "aws_eip" "nat_eip" { 
#   domain = "vpc" 
#}
#
#resource "aws_nat_gateway" "nat" { 
#   allocation_id = aws_eip.nat_eip.id 
#   subnet_id = aws_subnet.public.id 
#} 
#
#resource "aws_route_table" "private_rt" { 
#   vpc_id = aws_vpc.dev_vpc.id 
#   
#   route { 
#      cidr_block = "0.0.0.0/0" 
#      nat_gateway_id = aws_nat_gateway.nat.id 
#   } 
#   depends_on = [aws_nat_gateway.nat]
#   tags = merge(var.tags, { Name = "Private_Route_Table" }) 
#} 
#
#resource "aws_route_table_association" "private-rt-association" {
#   subnet_id = aws_subnet.private.id 
#   route_table_id = aws_route_table.private_rt.id 
#}
