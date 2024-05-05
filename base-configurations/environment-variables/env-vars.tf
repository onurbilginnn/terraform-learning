resource "aws_instance" "myec2" {
  ami = var.environment_variable
  instance_type = "t2.micro"
}