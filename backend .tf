terraform {
  backend "s3" {
    bucket       = "sneha-terraform-statefile-bkt"
    key          = "aws-vpc-2webservers/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}
