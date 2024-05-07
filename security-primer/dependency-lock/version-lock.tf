terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.60"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "web" {
  ami = "ami-0f673487d7e5f89ca"
  instance_type = "t2.micro"
}