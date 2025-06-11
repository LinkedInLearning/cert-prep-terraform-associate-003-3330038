
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.31.0"
    }
  }
}

provider "aws" {
  alias = "AWS-CAC"
  region = "ca-central-1"
  profile = "KS-AWS-TR01"
  # Configuration options
}

provider "aws" {
  alias = "AWS-USE1"
  region = "us-east-1"
  profile = "KS-AWS-TR01"
  # Configuration options
}

provider "aws" {
  alias = "AWS-USW2"
  region = "us-west-2"
  profile = "KS-AWS-TR01"
  # Configuration options
}