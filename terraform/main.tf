terraform {
  backend "s3" {
    bucket         = "firsts3-sudha"
    key            = "terraform/state/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true

  }
}

provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "ec2" {
  count         = 1
  ami           = "ami-06259b63260eddc13"
  instance_type = "t3.micro"

  tags = {
    Name = "GitHub-AWSEC2-${count.index + 1}"
  }
}
