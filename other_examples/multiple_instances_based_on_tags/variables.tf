variable "ami_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server"
  validation {
    condition     = can(regex("^((ami-)([a-z0-9_.-]){3,128})$", var.ami_id))
    error_message = "Invalid ami_id variable format regex."
  }
}

variable "instance_type" {
  type        = string
  description = "Type of the EC2 instace to create"
  default     = "t2.micro"
}

variable "list_of_tags" {
  type        = list(map(string))
  description = "list_of_tags for the EC2 instance"
}

