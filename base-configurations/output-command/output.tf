provider "aws" {
  region = "eu-central-1"
}

resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "iam_names" {
  value = aws_iam_user.lb[*].name
}

output "iam_arn" {
  value = aws_iam_user.lb[*].arn
}