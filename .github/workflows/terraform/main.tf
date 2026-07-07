provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "ec2" {
  ami           = "ami-0f1a1e5dc0c29441c"
  instance_type = "t3.micro"

  tags = {
    Name = "GitHub-EC2"
  }
}
