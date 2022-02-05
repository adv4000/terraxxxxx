provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "adv-it-terraform-remote-state" // Bucket where to SAVE Terraform State in ROOT Account
    key    = "root/s3/terraform.tfstate"     // Object name in the bucket to SAVE Terraform State
    region = "us-west-2"                     // Region where bucket was created
  }
}
