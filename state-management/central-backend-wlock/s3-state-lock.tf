terraform {
  backend "s3" {
    bucket = "terraform-test-bucket-exercise"
    key = "network/demo.tfstate"
    region = "eu-central-1"
    dynamodb_table = "terraform-state-locking"
  }
}

resource "time_sleep" "wait_150_seconds" {
  create_duration = "150s"
}