variable "ami_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
}

variable "instance_type" {
  type        = string
  description = "Type of the EC2 instace to create."
  default     = "t2.micro"
}

variable "tags" {
  type        = map(string)
  description = "Tags for the EC2 instance."
}

variable "sg_name" {
  type        = string
  description = "Name for the security group."
}

variable "ingress_rules" {
  type        = any
  description = "Rules for the security group."
}
