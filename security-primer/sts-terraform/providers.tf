provider "aws" {
  region = "eu-central-1"
  assume_role {
    role_arn = "arn:aws:iam::45454545:role/<role_name>"
    session_name = "terraform-demo"
  }
}