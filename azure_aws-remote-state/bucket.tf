resource "aws_s3_bucket" "bucket" {
  bucket = "danielmena-remote-state"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.versioning.id
  versioning_configuration {
    status = "Enabled"
  }
}