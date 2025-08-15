output "dev_vpc" {
   value = aws_vpc.dev_vpc.id
}

output "public_subnet" {
   value = aws_subnet.public.id
}

output "private_subnet" {
   value = aws_subnet.private.id
}

output "public_rt" {
   value = aws_route_table.public_rt.id
}
