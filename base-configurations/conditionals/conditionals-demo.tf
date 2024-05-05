provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "dev" {
  ami = var.ami
  instance_type = var.instance_types["dev"]
  count = var.is-test == true ? 1 : 0
}

resource "aws_instance" "prod" {
  ami = var.ami
  instance_type = var.instance_types["prod"]
  count = var.is-test == false ? 1 : 0
}