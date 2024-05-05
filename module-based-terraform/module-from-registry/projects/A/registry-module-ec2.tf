provider "aws" {
  region = "eu-central-1"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"
  name = "single-instance"

    ami = "ami-0f673487d7e5f89ca"
  instance_type          = "t2.micro"
  key_name               = "user1"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}