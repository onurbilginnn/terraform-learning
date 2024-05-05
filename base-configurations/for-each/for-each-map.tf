provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-0f673487d7e5f89ca"
  for_each = {
    key1 = "t2.micro"
    key2 = "t2.medium"
  }
  instance_type = each.value
  key_name = each.key
  tags = {
    Name = each.value
  }
}