# Generate backend.tf file with remote state configuration
remote_state {
  backend = "s3"
  generate = {
    path      = "_backend.tf"
    if_exists = "overwrite"
  }

  config = {
    bucket  = "adv-it-terragrunt-remote-state-${local.provider.account_id}"
    region  = "${local.provider.aws_region}"
    key     = "${path_relative_to_include()}/terraform.tfstate"
    encrypt = true
  }
}

iam_role       = local.provider.iam_role

locals {
  provider = read_terragrunt_config("./../common.hcl", {inputs: {iam_role: "", account_id: "", aws_region: ""}}).inputs
}
