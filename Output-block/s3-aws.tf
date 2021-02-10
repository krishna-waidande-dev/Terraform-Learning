#terrafoorm
terraform {
  required_providers {
      aws={
          source = "hashicorp/aws"
      }
  }
}

#Provider
provider "aws" {
    profile = "default"
    region = "us-east-1"
}

#Resource
resource  "aws_s3_bucket" "demobucketkrish" {
    bucket = "demobucketkrish"
}

output "demobucket_output" {
  value = aws_s3_bucket.demobucketkrish
}

output "specific-attribute" {
    value = aws_s3_bucket.demobucketkrish.bucket_regional_domain_name
  
}