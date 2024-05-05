variable "region" {
  type = string
}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

variable "tags" {
  type = list
}

variable "ami" {
  type = map
}

variable "key_file" {
  type = string
}

variable "instance_type" {
  type = string
}