 resource "aws_instance" "demo-instance1" {
   ami = "ami-0005e0cfe09cc9050"
   instance_type = "t2.micro"

   tags = {                                
     Name = "demo-server1"
}
}


resource "aws_instance" "demo-Instance2" {
  provider      = aws.west
  ami           = "ami-0a5ed7a812aeb495a"  # AMI for us-west-1
  instance_type = "t2.micro"

  tags = {                                
    Name = "demo-server2"
}
}