variable = "assume_role_arn" {
  type = string
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
    role_arn     = var.assume_role_arn
    session_name = "github-terraform"
    }
}
