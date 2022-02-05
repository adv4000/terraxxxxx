provider "aws" {
  region = "us-west-2"
  assume_role {
    role_arn = "arn:aws:iam::639130796919:role/OrganizationAccountAccessRole"
  }
}

terraform {
  backend "s3" {
    bucket = "adv-it-terraform-remote-state" // Bucket where to SAVE Terraform State in ROOT Account
    key    = "dev/s3/terraform.tfstate"      // Object name in the bucket to SAVE Terraform State
    region = "us-west-2"                     // Region where bucket was created
  }
}
