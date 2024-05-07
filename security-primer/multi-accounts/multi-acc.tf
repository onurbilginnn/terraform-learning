resource "aws_eip" "eip1" {
  domain = "vpc"
}

// Different region and AWS account
resource "aws_eip" "eip2" {
  domain = "vpc"
  provider = aws.aws02
}