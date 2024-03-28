resource "aws_instance" "MyInstance" {
  ami           = "ami-0f9fc25dd2506cf6d"
  instance_type = "t2.micro"
  tags = {
    name = "server1"
  }
}
