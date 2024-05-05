terraform {
#   required_version = "< 0.11"
  required_providers {
    aws = "~> 2.0"
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0f673487d7e5f89ca"
  instance_type = "t2.micro"
}