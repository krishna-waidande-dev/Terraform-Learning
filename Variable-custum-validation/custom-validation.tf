terraform {
    required_providers {
      aws = {
          source = "hashicorp/aws"
      }
    }
}

provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_instance" "my-first-server" {
  ami           = var.imageid
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-ec2"
  }
}