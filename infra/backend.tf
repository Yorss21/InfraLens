terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "infralens-terraform-state"
    key            = "infralens/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "infralens-terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
