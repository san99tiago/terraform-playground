terraform {
  backend "s3" {
    # COMMENTED OUT: This is the default backend configuration
    bucket = "santisantisanti" # Manually created
    key    = "terraform/dev/ex03_state.json"
    region = "us-east-1"
  }
}
