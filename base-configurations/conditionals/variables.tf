variable "ami" {}

variable "instance_types" {
    type = map(string)
}

variable "is-test" {
  type = bool
}