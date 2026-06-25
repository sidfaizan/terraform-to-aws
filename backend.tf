terraform {

  backend "s3" {

    bucket = "my-terraform-state-bucket"

    key = "eks/terraform.tfstate"

    region = "us-east-1"

    use_lockfile = "terraform-lock"

    encrypt = true
  }
}
