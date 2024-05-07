provider "aws" {
  region = "eu-central-1"
}

provider "aws" {
  region = "eu-west-1"
  alias = "aws02"
  profile = "account02" // Should be exact AWS account name
}