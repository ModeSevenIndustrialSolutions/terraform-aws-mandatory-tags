terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  # Dummy provider to prevent cyclic dependency
  # See: https://github.com/hashicorp/terraform-provider-aws/issues/28772
  region = "us-west-2"
  alias  = "bootstrap"
}
