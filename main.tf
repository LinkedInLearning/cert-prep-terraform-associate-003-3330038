
# data "aws_vpc" "default-vpc" {
#   default = true
# }

# resource "aws_security_group" "Project-sg" {
#   name        = "sever1-sg"
#   description = "My  security group"
#   vpc_id      = data.aws_vpc.default-vpc.id  # Using the VPC ID from the data source

  # Add rules and other security group configurations


 resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "custom_subnet" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-1a"  # Update with the desired availability zone
  map_public_ip_on_launch = true
}

resource "aws_instance" "demo_instance" {
  ami           = "ami-0a3c3a20c09d6f377"  # Update with a valid AMI ID
  instance_type = "t2.micro"
  subnet_id = aws_subnet.custom_subnet.id

  tags = {
    Name = "example-instance"
  }
}









