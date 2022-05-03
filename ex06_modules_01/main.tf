provider "aws" {
  region = "us-east-1"
}

module "my_vpc" {
  source         = "./vpc"
  vpc_cidr_block = var.vpc_cidr_block
  base_tags      = var.base_tags
}

module "my_bucket" {
  source      = "./bucket"
  bucket_name = var.bucket_name
  base_tags   = var.base_tags
}

module "my_subnet" {
  source            = "./subnet"
  vpc_id            = module.my_vpc.output_vpc_id
  subnet_cidr_block = var.subnet_cidr_block
  base_tags         = var.base_tags
}