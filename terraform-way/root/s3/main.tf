module "s3" {
  source = "git@github.com:terraform-aws-modules/terraform-aws-s3-bucket.git"

  bucket = var.bucket_name
  tags   = var.tags
}
