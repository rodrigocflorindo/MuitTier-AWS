provider "aws" {
  region = var.region-name
  #access_key = "AKIA42B6SBETMHFK6J7G"
  #secret_key = "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"
  shared_credentials_file = "/mnt/c/Users/rodri/.aws/credentials"
  profile                 = "aws-terraform"
}

