provider "aws" {
  region = "us-west-1"
  assume_role {
    role_arn = "arn:aws:iam::032823347814:role/OrganizationAccountAccessRole"
  }
}

terraform {
  backend "s3" {
    bucket = "adv-it-terraform-remote-state"     // Bucket where to SAVE Terraform State in ROOT Account
    key    = "prod/s3-objects/terraform.tfstate" // Object name in the bucket to SAVE Terraform State
    region = "us-west-2"                         // Region where bucket was created
  }
}
