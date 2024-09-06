provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "my-unique-test-bucket-12345" # Change this to a unique bucket name
  acl    = "private"

  tags = {
    Name        = "My Test Bucket"
    Environment = "Dev"
  }
}
