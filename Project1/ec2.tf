provider "aws" {
  region = "us-east-1"
  access_key = "************"
  secret_key = "************"
}

resource "aws_instance" "my-first-server" {
  ami           = "ami-00ddb0e5626798373"
  instance_type = "t2.micro"
  tags = {
    Name = "terraform-tag"
  }
}
