resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = merge(
    var.base_tags,
    {
      Name = "custom-vpc-ex06"
    }
  )
}