provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "ec2" {
  count         = 1
  ami           = "ami-06259b63260eddc13"
  instance_type = "t3.micro"
resource "aws_s3_bucket" "stage" {
  bucket = "my-unique-bucket-name-12345"
}

  tags = {
    Name = "GitHub-AWSEC2-${count.index + 1}"
  }
}
