provider "aws" {
  region = "us-east-1"
}

# ---------- THIS SECOND PART IS AFTER BACKEND BUCKET IS CREATED ----------

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = merge(
    var.base_tags,
    {
      Name = "custom-vpc-ex03"
    }
  )
}

resource "aws_security_group" "my_sg_allow_tls" {
  name        = "allow_tls_sg"
  description = "Allow TLS inbound traffic from anywhere"
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = merge(
    var.base_tags,
    {
      Name = "allow_tls_sg"
    }
  )
}