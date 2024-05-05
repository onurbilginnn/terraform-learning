provider "aws" {
  region     = var.region
}

resource "aws_key_pair" "loginkey" {
  key_name   = "login-key"
  public_key = file("${path.module}/${var.key_file}")
}

resource "aws_instance" "app-dev" {
   ami = lookup(var.ami,var.region)
   instance_type = var.instance_type
   key_name = aws_key_pair.loginkey.key_name
   count = 2
   tags = {
     Name = element(var.tags,count.index)
   }
}


output "timestamp" {
  value = local.time
}