terraform {
  required_providers {
      aws = {
          source="hashicorp/aws"
      }
  }
}

provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_instance" "PROD" {
  ami = "ami-00ddb0e5626798373"
  instance_type = "t2.xlarge"
  count=var.env=="PROD" ? 1 : 0
}

resource "aws_instance" "DEV" {
  ami = "ami-00ddb0e5626798373"
  instance_type = "t2.micro"
  count=var.env=="DEV" ? 1 : 0
}