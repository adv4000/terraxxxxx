data "terraform_remote_state" "s3" { // This is to use Outputs from Remote State
  backend = "s3"
  config = {
    bucket = "adv-it-terraform-remote-state" // Bucket from where to GET Terraform State
    key    = "root/s3/terraform.tfstate"     // Object name in the bucket to GET Terraform State
    region = "us-west-2"                     // Region where bucket created
  }
}

module "s3_object" {
  source  = "git@github.com:terraform-aws-modules/terraform-aws-s3-bucket.git//modules/object"
  bucket  = data.terraform_remote_state.s3.outputs.id
  key     = var.file_name
  content = var.file_text
  tags    = var.tags
}
