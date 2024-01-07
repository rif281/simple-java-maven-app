terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = ${{ secrets.AWS_ACCESS_KEY_ID }}
  secret_key = ${{ secrets.AWS_SECRET_ACCESS_KEY }}
}

resource "aws_instance" "for_simple_java_project" {
  ami                    = "ami-0fe87baa62d01cd60"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0a488b17830c73da9"]

  tags = {
    Name = "for_simple_java_project"
  }
}
