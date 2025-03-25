resource "aws_instance" "myec2vm" {
  ami           = "ami-08b5b3a93ed654d19"
  instance_type = "t2.micro"
  user_data     = file("${path.module}/app1-install.sh")
  tags = {
    Name = "myec2vm"
  }
}