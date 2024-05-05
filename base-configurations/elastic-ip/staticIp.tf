provider "aws" {
  region = "eu-central-1"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}