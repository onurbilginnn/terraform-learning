variable "username" {
  type = string
  default = "onat"
}

variable "user_tags" {
  type = map(number)
  default = {
    "id" = 33
  }
}

variable "my_list" {
  type = list(number)
  default = [ 1,2,3,4 ]
}