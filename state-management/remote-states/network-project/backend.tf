terraform {
  backend "s3" {
    bucket = "terraform-test-bucket-exercise"
    key    = "network/eip.tfstate"
    region = "eu-central-1"
  }
}
