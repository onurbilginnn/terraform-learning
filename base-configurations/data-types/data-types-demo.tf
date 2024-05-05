resource "aws_iam_user" "lb" {
  name = var.username
  tags = var.user_tags
}

output "values" {
  value = var.user_tags.id
}