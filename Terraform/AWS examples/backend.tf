terraform {
  backend "s3" {
    bucket = "My_S3_bucket"
    profile = "terraform"
    region = "eu-west-1"
    key    = "state/terraform.tfstate"
  }
}
