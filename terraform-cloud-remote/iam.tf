provider "aws" {
  region = "eu-central-1"
  secret_key = "...."
  access_key = "...."
}

resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/system/"
}