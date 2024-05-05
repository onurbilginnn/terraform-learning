resource "aws_security_group" "ec2-sg" {
  name = "myec2-sg"

  ingress {
    description = "Allow inbound from Secret App"
    from_port = local.app_port
    to_port = local.app_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}

resource "aws_security_group" "elb-sg" {
  name = "myelb-sg"
  
   ingress {
    description = "Allow inbound from Secret App"
    from_port = local.app_port
    to_port = local.app_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
  }
}