provider "aws" {
  region = "us-east-1"
}

module "my_bucket" {
  source      = "./modules/bucket"
  bucket_name = var.bucket_name
  base_tags   = var.base_tags
}
