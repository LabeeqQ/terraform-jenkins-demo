terraform {

  backend "s3" {
    bucket         = "labeeq-terraform-state-demo"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
  }
}

provider "aws" {
  region = "us-east-1"
}
