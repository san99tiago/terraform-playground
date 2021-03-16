variable "bucket_name" {
  type        = string
  description = "Name for the AWS-bucket."
  default     = "my-terraform-backend-ex03"
}

variable "acl" {
  type        = string
  description = "AWS Network Access Control List security."
  default     = "private"
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "dev",
    CreatedBy   = "terraform"
  }
}
