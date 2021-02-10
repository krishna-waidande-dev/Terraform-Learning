terraform {
    required_providers {
      aws={
        source="hashicorp/aws"
      }
    }
}

provider "aws" {
  region                  = "us-east-1"
  profile                 = "default"
}

resource "aws_instance" "demo-ec2" {
  ami = "ami-047a51fa27710816e"
  instance_type = "t2.micro"

   tags = {
        Name = "ec2-terraform"
   }
}