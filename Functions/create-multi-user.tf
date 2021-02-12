terraform {
  required_providers {
      aws = {
          source="hashicorp/aws"
      }
  }
}

provider "aws" {
    region = "us-east-1"
}

# Requirement : Create 5 users within IAM from given CSV.

locals {
  UserList = file("${path.module}/UserList.csv")

  allUsers = csvdecode(local.UserList)
}

resource "aws_iam_user" "CsvUsers" {
    #Converting the value into Map variable. UsersName is came because of
    # Column name specified in the CSV file.
    for_each = {for user in local.allUsers: user.UsersName => user}
    name = each.value.UsersName
    path = "/system/"
}


#For debugging purpose only.
 output "allUsers" {
     value = local.allUsers
 }

output "individual" {
    value = {for user in local.allUsers: user.UsersName => user}
}
