variable "bucket_name" {
  type        = string
  description = "Name for the AWS S3 bucket."
  default     = "san99tiago-tests"
}

variable "base_tags" {
  type = map(string)
  default = {
    Environment = "dev",
    Owner       = "Santiago Garcia Arango",
    Source      = "terraform-playground"
  }
}
