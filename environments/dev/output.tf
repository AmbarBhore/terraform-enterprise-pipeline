output "dev_s3_bucket_name" {
   value = module.bucket_name.bucket_name
}

output "dev_iam_user_name" {
   value = module.iam_user_name.iam_user_name
}
