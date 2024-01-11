 resource "aws_instance" "demo-instance1" {
   ami = ""
   instance_type = "t2.medium"

   tags = {                                
     Name = "demo-server1"
}
}


resource "aws_instance" "demo-Instance2" {
  provider      = 
  ami           = ""  # AMI for us-west-1
  instance_type = "t2.micro"

  tags = {                                
    Name = "demo-server2"
}
}