terraform {
  backend "s3" {
    bucket = "three-tier-architecture-bucket-v1"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}