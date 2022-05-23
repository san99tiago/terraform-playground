provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      "Owner"  = "Santiago Garcia Arango",
      "Source" = "terraform-playground"
    }
  }
}
