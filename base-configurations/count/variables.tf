variable "ami" {}

variable "instance_type" {}

variable "lambda_names" {
    type = list(string)
}