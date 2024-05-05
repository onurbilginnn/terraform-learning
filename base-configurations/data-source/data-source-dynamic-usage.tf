provider "aws" {
  region = "eu-central-1"
}

data "aws_ami" "my_image" {
  most_recent = true
  owners = ["amazon"]
  
  filter {
    name = "name"
    // ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20240411
    // last part indicates date, that is why we changed it to *
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"] 
  }
}

resource "aws_instance" "web" {
  ami = data.aws_ami.my_image.id
  instance_type = "t2.micro"
}