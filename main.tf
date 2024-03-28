# Define VPC
# terraform aws create vpc

resource "aws_vpc" "my_vpc" {
  cidr_block           = "10.0.0.0/16"    
  instance_tenancy     = "default"        
  enable_dns_hostnames = true

  
  tags = {
    Name = "demo-vpc"
  }
}
