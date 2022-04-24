variable "aws_region" {
  type        = string
  description = "Region for thw AWS deployment."
}

variable "aws_availability_zone" {
  type        = string
  description = "Availability Zone within selected Region."
}

variable "vpc_cidr_block" {
  type        = string
  description = "Cidr_block for the VPC."
}

variable "vpc_instance_tenancy" {
  type        = string
  description = "Instance tenancy for the VPC."
}

variable "vpc_tags" {
  type        = map(string)
  description = "Tags for the VPC."
}

variable "gw_tags" {
  type        = map(string)
  description = "Tags for the GateWay."
}

variable "rt_tags" {
  type        = map(string)
  description = "Tags for the Route Table."
}

variable "vpc_subnet_cidr_block" {
  type        = string
  description = "Cidr_block for the Subnet for the VPC."
}

variable "vpc_subnet_tags" {
  type        = map(string)
  description = "Tags of the Subnet for the VPC."
}

variable "sg_name" {
  type        = string
  description = "Name for the security group."
}

variable "sg_tags" {
  type        = map(string)
  description = "Tags for the security group."
}

variable "sg_ingress_rules" {
  type        = any
  description = "Ingress rules for the security group."
}

variable "sg_egress_rules" {
  type        = any
  description = "Egress rules for the security group."
}

variable "network_interface_private_ips" {
  type        = any
  description = "Private IPs for the Network Interface."
}

variable "instance_ami_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
}

variable "instance_type" {
  type        = string
  description = "Type of the EC2 instace to create."
  default     = "t2.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = "Tags for the EC2 instance."
}
