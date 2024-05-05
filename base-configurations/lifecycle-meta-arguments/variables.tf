variable "ami_by_os" {
  type = map(string)
  default = {
    "awslinux" = "ami-0f673487d7e5f89ca"
    "windows" = "ami-0847a7983fdc60e79"
  }
}