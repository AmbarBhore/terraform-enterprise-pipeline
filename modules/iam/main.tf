resource "aws_iam_user" "first_user" {
   name = var.user_name

   tags = {
     company = "continuum"
     visa = "h1b"
     location = "mumbai"
     role = "HR"
   }
}
