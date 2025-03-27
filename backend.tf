terraform {
  backend "s3" {
    bucket = "my-bucket-reyan"
    key    = "k1/terraform.tfstate"
    region = "us-east-1"
  }
}