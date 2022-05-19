provider "aws" {
  region = "us-east-1"
}

# LIST OF USERS
variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["santi", "moni", "elkin"]
}

# FOR_EACH USAGE (must be "map" or "set of strings", that's why we use "toset()")
resource "aws_iam_user" "example" {
  for_each = toset(var.user_names)
  name     = each.value
}

# FOR USAGE
output "print_the_names" {
  value = [for user_name in var.user_names : "The specific user_name is: ${user_name} and its index is ${index(var.user_names, "${user_name}")}"]
}
