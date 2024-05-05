provider "aws" {
  region     = "eu-central-1"
}

resource "aws_instance" "myec2" {
    ami = var.ami_by_os["awslinux"]
    instance_type = "t2.micro"

    tags = {
        Name = "HelloWorld"
    }

    lifecycle {
      # ignore_changes = [ tags ]
      ignore_changes = all
    }
}