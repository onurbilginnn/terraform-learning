provider "aws" {
  region = "eu-central-1"
}

resource "aws_security_group" "allow_tls" {
  name        = "terraform-firewall"
  description = "Managed from Terraform"
}

resource "aws_security_group_rule" "allow_tls_ipv4" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.allow_tls.id
}

resource "aws_security_group_rule" "allow_all_traffic_upv4" {
    type = "egress"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.allow_tls.id
}