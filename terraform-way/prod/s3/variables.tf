variable "bucket_name" {
  default = "adv-it-terraform-test-bucket-prod"
}

variable "tags" {
  default = {
    Owner       = "Denis Astahov"
    Environment = "prod"
  }
}
