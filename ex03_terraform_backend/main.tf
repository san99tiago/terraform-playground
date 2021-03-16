provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform-ex03-bucket" {
  bucket = var.bucket_name
  acl    = var.acl
  tags   = var.tags
}
