resource "aws_security_group" "ec2-sg" {
  name = "myec2-sg"

  ingress {
    description = "Allow inbound from secret application"
    from_port = 8443
    to_port = 8443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "sg_id" {
  value = aws_security_group.ec2-sg.id
}