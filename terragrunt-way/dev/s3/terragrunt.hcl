include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "git@github.com:terraform-aws-modules/terraform-aws-s3-bucket.git//."
}

inputs = {
  bucket = "adv-it-terragrunt-test-bucket-dev"
  tags = {
    Owner       = "Denis Astahov"
    Environment = "dev"
  }
}
