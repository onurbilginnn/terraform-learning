provider "aws" {
  region = "eu-central-1"
}

resource "aws_iam_user" "terraform_created_user" {
  name = "terraform_created_user"
}