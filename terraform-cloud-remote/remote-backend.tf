terraform {
  cloud {
    organization = "TRT-GLOBAL"

    workspaces {
      name = "remote-operation"
    }
  }
}