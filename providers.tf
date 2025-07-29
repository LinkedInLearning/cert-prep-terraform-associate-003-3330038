terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"   # Specifies the source of the AWS provider (HashiCorp's registry)
      version = ">=5.31.0"        # Ensures the AWS provider version is at least 5.31.0
    }
  }
}

provider "aws" {
  region  = "us-east-1"           # Sets the AWS region to N. Virginia (us-east-1)
  profile = "Chen"                # Uses the AWS credentials profile named "Chen"
  # Configuration options         # Placeholder for additional provider settings if needed
}

