terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "bowdoincollege"
    workspaces {
      prefix = "noc-aws-webcam-"
    }
  }
}

provider "aws" {
  region = local.aws_region[var.region]
}

locals {
  aws_region = {
    usea1 = "us-east-1"
    uswe2 = "us-west-2"
  }
}
