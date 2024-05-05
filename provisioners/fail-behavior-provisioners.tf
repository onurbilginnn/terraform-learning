resource "aws_iam_user" "lb" {
  name = "loadbalancer"

// Default on_failure = fail
provisioner "local-exec" {
  on_failure = fail
  command = "echo creation time provisioner is starting"
}

provisioner "local-exec" {
  on_failure = continue
  command = "echo destroy time provisioner is starting"
}
}
