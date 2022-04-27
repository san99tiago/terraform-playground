provider "aws" {
  region = "us-east-1"
}

# ---------- THIS FIRST PART IS DEDICATED FOR THE TERRAFORM BACKEND ----------
resource "aws_s3_bucket" "my_backend_bucket" {
  bucket = var.bucket_name
  tags   = var.tags
}

resource "aws_s3_bucket_public_access_block" "my_backend_bucket_block_public_access_block" {
  bucket = aws_s3_bucket.my_backend_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
