variable "vpc_id" {
  type = string
}

variable "subnet_cidr_block" {
  type = string
}

variable "base_tags" {
  type = map(string)
}