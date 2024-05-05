provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "app-dev" {
  ami = var.ami
  instance_type = var.instance_types["dev-ec2"]
  tags = local.common_tags
}

resource "aws_instance" "db-dev" {
  ami = var.ami
  instance_type = var.instance_types["dev-db"]
  tags = local.common_tags
}

resource "aws_ebs_volume" "db-ebs" {
  availability_zone = "eu-central-1a"
  size = 8
  tags = local.common_tags
}