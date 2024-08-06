terraform {
  required_version = "v1.1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12"
    }
  }
}

provider "aws" {
  region = "ap-south-1" # Change to your desired region
}

terraform {
  backend "s3" {
    bucket  = "sudheer-mentorship-366140438193-tfstate"
    key     = "tfstate/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
    #dynamodb_table = "terraform-lock-table"
  }
}