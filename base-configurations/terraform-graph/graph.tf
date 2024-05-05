provider "aws" {
  region     = "eu-central-1"
}

resource "aws_instance" "myec2" {
   ami = "ami-0f673487d7e5f89ca"
   instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  instance = aws_instance.myec2.id
  domain = "vpc"
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.private_ip}/32"]

  }
}