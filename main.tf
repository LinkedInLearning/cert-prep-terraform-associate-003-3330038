# create vpc
# terraform aws create vpc
resource "aws_vpc" "my-vpc" {
  cidr_block              = "10.0.0.0/16"
  instance_tenancy        = "default"
  enable_dns_hostnames    = true

  tags      = {
    Name    = "mydemo-vpc1"
  }
}


