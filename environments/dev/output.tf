output "dev_s3_bucket_name" {
   value = module.bucket_name.bucket_name
}

output "dev_iam_user_name" {
   value = module.dev_iam_user.user_name
}

output "dev_vpc" {
   value = module.vpc_project.dev_vpc
}

output "dev_subnet" {
   value = module.vpc_project.public_subnet
}

output "dev_private_subnet" {
   value = module.vpc_project.private_subnet
}

output "public_route_table" {
   value = module.vpc_project.public_rt
}

output "public_ip" {
   value = module.vpc_project.public_ip
}

output "private_route_table" {
   value = module.vpc_project.private_rt
}

output "nat_gateway" {
   value = module.vpc_project.nat_gateway
}
