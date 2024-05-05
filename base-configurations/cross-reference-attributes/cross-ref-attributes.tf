resource "aws_eip" "lb" {
  domain = "vpc"
}

resource "aws_security_group" "allow_tls" {
  name = "attribute-firewall"
}

resource "aws_vpc_security_group_ingress_rule" "name" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4 = "${aws_eip.lb.public_ip}/32"
  from_port = 80
  to_port = 80
  ip_protocol = "tcp"
}