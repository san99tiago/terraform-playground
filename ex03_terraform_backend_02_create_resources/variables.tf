variable "base_tags" {
  type = map(string)

  default = {
    Environment = "dev",
    Owner       = "Santiago Garcia Arango",
    Source      = "terraform-playground"
  }
}
