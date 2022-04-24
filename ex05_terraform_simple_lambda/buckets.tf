resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucketname
  acl    = "private"
}
