terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
    assume_role {
      arn = "{{ secrets.TERRAFORM_ARN }}"
    }
}
