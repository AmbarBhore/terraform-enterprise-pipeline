output "dev_vpc" {
   value = aws_vpc.dev_vpc.id
}

output "public_subnet" {
   value = aws_subnet.public.id
}
