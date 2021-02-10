provider "aws" {
  region = "us-east-1"
  access_key = "AKIAJZHKPHX2Z576PDTA"
  secret_key = "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"
}

resource "aws_instance" "my-first-server" {
  ami           = "ami-00ddb0e5626798373"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-tag"
  }
}
