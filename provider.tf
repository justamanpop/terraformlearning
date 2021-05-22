provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "globaluniqbucket2"
    key    = "anish/mystate"
    region = "us-east-1"
  }
}
