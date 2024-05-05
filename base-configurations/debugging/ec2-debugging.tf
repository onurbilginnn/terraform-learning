provider "aws" {
  region = "eu-central-1"
}

data "aws_ami" "my_image" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "my_ec2" {
  ami           = data.aws_ami.my_image.id
  instance_type = "t2.micro"
}
