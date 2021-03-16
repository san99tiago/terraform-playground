terraform {
  backend "s3" {
    bucket = "my-terraform-backend-ex03"
    key    = "terraform/dev"
    region = "us-east-1"
  }
}
