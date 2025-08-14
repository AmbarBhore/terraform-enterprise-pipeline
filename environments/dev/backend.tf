terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "RMM"

    workspaces {
      name = "terraform-enterprise-dev-workspace"
    }
  }
}
