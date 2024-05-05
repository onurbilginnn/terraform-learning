locals {
  common_tags = {
    Owner = "DevOps Team"
    service = "backend"
  }
}

variable "ami" {
  type = string
}

variable "instance_types" {
  type = map(string)
}