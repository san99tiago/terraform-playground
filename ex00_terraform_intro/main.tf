## DEPLOY AN EMPTY VPC
## Santiago Garcia Arango

# Terraform settings:
terraform {
  required_version = ">= 1.1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a really simple VPC
resource "aws_vpc" "super_simple_vpc" {
  cidr_block         = "10.0.0.0/16"
  instance_tenancy   = "default"
  enable_dns_support = "true"

  tags = var.vpc_tags
}
