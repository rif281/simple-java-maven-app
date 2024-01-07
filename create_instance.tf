provider "aws" {
  region     = "us-east-1"
  access_key = "your_access_key"
  secret_key = "your_secret_key"
}

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "for_simple_java_project" {
  ami                    = "ami-0fe87baa62d01cd60"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-0a488b17830c73da9"]

  tags = {
    Name = "for_simple_java_project"
  }
}
