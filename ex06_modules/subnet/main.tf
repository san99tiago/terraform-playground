resource "aws_subnet" "my_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.subnet_cidr_block

  tags = merge(
    var.base_tags,
    {
      Name = "custom-subnet-ex06"
    }
  )
}