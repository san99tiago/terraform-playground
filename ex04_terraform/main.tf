provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "my-terraform-vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = var.vpc_instance_tenancy
  tags             = var.vpc_tags
}

resource "aws_internet_gateway" "my-terraform-internet-gw" {
  vpc_id = aws_vpc.my-terraform-vpc.id
  tags   = var.gw_tags
}

resource "aws_route_table" "my-terraform-rt" {
  vpc_id = aws_vpc.my-terraform-vpc.id
  tags   = var.rt_tags
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-terraform-internet-gw.id
  }
  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.my-terraform-internet-gw.id
  }
}

resource "aws_subnet" "my-terraform-subnet-A" {
  vpc_id            = aws_vpc.my-terraform-vpc.id
  cidr_block        = var.vpc_subnet_cidr_block
  availability_zone = var.aws_availability_zone
  tags              = var.vpc_subnet_tags
}

resource "aws_route_table_association" "my-terraform-rt-association" {
  subnet_id      = aws_subnet.my-terraform-subnet-A.id
  route_table_id = aws_route_table.my-terraform-rt.id
}

resource "aws_security_group" "my-terraform-security-group" {
  name        = var.sg_name
  description = "Allow custom TCP and SSH connections."
  vpc_id      = aws_vpc.my-terraform-vpc.id
  dynamic "ingress" {
    for_each = var.sg_ingress_rules
    content {
      description = "SG ingress rule"
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
  dynamic "egress" {
    for_each = var.sg_egress_rules
    content {
      description = "SG egress rule"
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }
  tags = var.sg_tags
}

resource "aws_network_interface" "my-terraform-network-interface" {
  subnet_id       = aws_subnet.my-terraform-subnet-A.id
  private_ips     = [var.network_interface_private_ips]
  security_groups = [aws_security_group.my-terraform-security-group.id]
}

resource "aws_eip" "my-terraform-eip" {
  vpc                       = true
  network_interface         = aws_network_interface.my-terraform-network-interface.id
  associate_with_private_ip = var.network_interface_private_ips
  depends_on                = [aws_internet_gateway.my-terraform-internet-gw]
}

resource "aws_instance" "my-terraform-instance" {
  ami               = var.instance_ami_id
  instance_type     = var.instance_type
  availability_zone = var.aws_availability_zone
  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.my-terraform-network-interface.id
  }
  user_data = <<-EOF
      #!/bin/bash
      sudo apt update -y
      sudo apt install apache2 -y
      sudo systemctl start apache2
      sudo bash -c 'echo my first cool web server from IaC > /var/www/html/index.html'
      EOF
  tags      = var.instance_tags
}
