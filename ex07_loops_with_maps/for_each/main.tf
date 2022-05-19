provider "aws" {
  region = "us-east-1"
}

# MAP OF USERS
variable "user_names" {
  description = "map"
  type        = map(string)
  default = {
    user1 = "santi"
    user2 = "moni"
    user3 = "elkin"
  }
}

# FOR_EACH USAGE
resource "aws_iam_user" "example" {
  for_each = var.user_names
  name     = each.value
}

# FOR USAGE
output "print_the_names" {
  value = [for k, v in var.user_names : "The specific user_name key is: ${k} its value is ${v}"]
}
