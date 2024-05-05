resource "aws_instance" "myec2" {
  ami = var.ami
  instance_type = var.instance_type
}