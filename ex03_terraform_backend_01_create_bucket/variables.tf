variable "bucket_name" {
  type        = string
  description = "Name for the AWS bucket that has the Terraform Backend."
  # WARNING: Remember that you have to use an unique bucket name in the world
  default = "my-terraform-backend-ex03"
}

variable "tags" {
  type = map(string)

  default = {
    Environment = "dev",
    Owner       = "Santiago Garcia Arango",
    Source      = "terraform-playground"
  }
}
