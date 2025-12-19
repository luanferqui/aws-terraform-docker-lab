provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "meu-terraform-state-luan"
    key    = "projeto-desafio/terraform.tfstate"
    region = "us-east-1"
  }
}