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

resource "aws_instance" "my-first-server" {
  ami           = "ami-00ddb0e5626798373"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-tag"
  }
}