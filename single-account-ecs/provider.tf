terraform {
  required_version = ">= 1.3.0"
  required_providers {
    # tflint-ignore: terraform_unused_required_providers
    aws = {
      version = ">= 4.0.0"
    }
    sysdig = {
      source  = "sysdiglabs/sysdig"
      version = ">= 0.5.33"
    }
  }
}

provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "sysdig" {
  sysdig_secure_url       = var.sysdig_secure_url
  sysdig_secure_api_token = var.secure_api_token
}

module "secure_for_cloud_aws_single_account_ecs" {
   source = "sysdiglabs/secure-for-cloud/aws//examples/single-account-ecs"
}