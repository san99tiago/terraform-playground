variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC."
  default     = "10.0.0.0/24"
}

variable "subnet_cidr_block" {
  type        = string
  description = "CIDR block for the subnet"
  default     = "10.0.0.0/25"
}

variable "bucket_name" {
  type        = string
  description = "Name for the AWS S3 bucket."
  default     = "my-terraform-bucket-ex06"
}

variable "base_tags" {
  type = map(string)
  default = {
    Environment = "dev",
    Owner       = "Santiago Garcia Arango",
    Source      = "terraform-playground"
  }
}
