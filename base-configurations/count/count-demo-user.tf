# resource "aws_iam_user" "lb" {
#   name = "loadbalancer.${count.index}"
#   count = 5
#   path = "/system/"
# }

resource "aws_iam_user" "lambda" {
  name = var.lambda_names[count.index]
  count = 3
  path = "/system/"
}