provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_first_ami_via_terraform" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  tags            = var.tags
  security_groups = [aws_security_group.tcp_ssh_connections.name]
}

resource "aws_security_group" "tcp_ssh_connections" {
  name        = var.sg_name
  description = "Allow TCP and SSH connections."

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      description = "SSH ingress rule"
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tcp_and_ssh"
  }
}
