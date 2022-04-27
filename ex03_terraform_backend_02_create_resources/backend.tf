terraform {
  backend "s3" {
    # Important: change name if it already exists (it must match to the one on part 01)
    bucket = "my-terraform-backend-ex03"
    key    = "dev/state"
    region = "us-east-1"
  }
}
