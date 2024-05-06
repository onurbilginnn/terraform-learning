data "terraform_remote_state" "eip" {
  backend = "s3"
  config = {
    bucket = "terraform-test-bucket-exercise"
    key    = "network/eip.tfstate"
    region = "eu-central-1"
  }
}
