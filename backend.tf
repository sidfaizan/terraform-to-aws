terraform {

  backend "s3" {

    bucket = "my-eks-state-bucket-faizan"
    key = "eks/terraform.tfstate"
    region = "ap-south-2"
    use_lockfile = true
    encrypt = true
  }
}
