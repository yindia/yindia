
data "aws_caller_identity" "provider" {}

data "aws_region" "provider" {}


data "terraform_remote_state" "parent" {
  backend = "s3"

  config = {
    bucket = "production-us-east-2-tfstate"
    key    = "production-us-east-2-tfstate"
    region = "production"
  }
}