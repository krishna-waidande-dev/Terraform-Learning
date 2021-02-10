terraform {
  required_providers {
      aws={
          source="hashicorp/aws"
      }
  }
}

provider "aws" {
  profile="default"
  region = "us-east-1"
}

resource "aws_security_group" "variablelab" {
  name="demoTfvariables"

  ingress {
      from_port=443
      to_port=443
      protocol="tcp"
      cidr_blocks = [var.cidrip]
  }

  ingress {
      from_port=80
      to_port=80
      protocol="tcp"
      cidr_blocks = [var.cidrip]
  }
}