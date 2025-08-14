output "dev_s3_bucket_name" {
   value = module.bucket_name.bucket_name
}

output "dev_iam_user_name" {
   value = module.dev_iam_user.user_name
}

output "dev_vpc" {
   value = module.vpc_project.dev_vpc
}
