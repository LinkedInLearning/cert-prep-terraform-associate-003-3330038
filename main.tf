 resource "aws_instance" "ec2-instance1" {
   ami = "ami-0750ad3fb18154b1b"
   instance_type = "t2.micro"

   tags = {                                
     Name = "demo-server1"
}
}


resource "aws_instance" "ec2-Instance2" {
  provider      = aws.AWS-USW2
  ami           = "ami-0005ee01bca55ab66"  # AMI for us-west-2
  instance_type = "t2.micro"

  tags = {                                
    Name = "demo-server2"
}
}