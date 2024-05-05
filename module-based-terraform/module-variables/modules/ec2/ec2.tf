resource "aws_instance" "myec2" {
  ami = "ami-0f673487d7e5f89ca"
  instance_type = var.type_of_instance
  availability_zone =  var.az
}