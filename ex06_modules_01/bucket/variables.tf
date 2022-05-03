variable "bucket_name" {
  type        = string
  description = "Name for the AWS S3 bucket."
}

variable "base_tags" {
  type = map(string)
}
