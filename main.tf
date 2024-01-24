data "aws_vpc" "default-vpc" {
  default = true
}

resource "aws_security_group" "Project-sg" {
  name        = "sever1-sg"
  description = "My  security group"
  vpc_id      = data.aws_vpc.default-vpc.id  # Using the VPC ID from the data source

  # Add rules and other security group configurations
}


# count












