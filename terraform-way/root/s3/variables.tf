variable "bucket_name" {
  default = "adv-it-terraform-test-bucket-root"
}

variable "tags" {
  default = {
    Owner       = "Denis Astahov"
    Environment = "root"
  }
}
