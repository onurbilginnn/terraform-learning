provider "aws" {
  region = "eu-central-1"
  access_key = "......"
  secret_key = "....."
}

resource "aws_instance" "myec2" {
  ami = "ami-0f673487d7e5f89ca"
  instance_type = "t2.micro"
}