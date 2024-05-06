terraform {
  backend "s3" {
    bucket = "terraform-test-bucket-exercise"
    key    = "network/terraform.tfstate"
    region = "eu-central-1"
  }
}