variable "vpn_ip" {
  default = "101.0.52.219/32"
  description = "vpn server created in AWS"
}

variable "app_port" {
  default = "8080"
}

variable "ssh_port" {
  default = "22"
}

variable "ftp_port" {
  default = "21"
}