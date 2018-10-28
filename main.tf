provider "aws" {
region = "eu-west-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-${random_uuid.test.result}"
  acl    = "private"
  
  versioning {
    enabled = true
  }

  tags {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "random_uuid" "test" {
}
