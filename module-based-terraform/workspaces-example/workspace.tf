provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "web" {
  ami = "ami-0f673487d7e5f89ca"
  instance_type = lookup(local.instance_type, terraform.workspace)
}

locals {
  instance_type = {
    default = "t2.nano"
    dev = "t2.micro"
    prd = "t2.large "
  }
}

output "workspace" {
  value = terraform.workspace
}