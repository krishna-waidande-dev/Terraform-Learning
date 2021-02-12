#This block of code explains the concept of count and count.index where we don't need to repeat the
# block of code many times instead only create it once and use the count and count.index method.

terraform {
  required_providers {
      aws= {
          source="hashicorp/aws"
      }
  }
}

provider "aws" {
  profile="default"
  region = "us-east-1"
}

resource "aws_iam_user" "userList" {
  name=var.allUserList[count.index]
  count=length(var.allUserList)
  path="/system/"
}