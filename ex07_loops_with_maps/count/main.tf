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

# COUNT USAGE
resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name  = values(var.user_names)[count.index]
}

# FOR USAGE
output "print_the_names" {
  value = [for k, v in var.user_names : "The specific user_name key is: ${k} its value is ${v}"]
}
