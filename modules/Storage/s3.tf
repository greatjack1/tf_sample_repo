resource "aws_s3_bucket" "yaakov-tf-test-bucket" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "tf-test-bucket-policy" {
  bucket = aws_s3_bucket.yaakov-tf-test-bucket.id
  acl    = "private"
}
