output "server_public_ip" {
  value = aws_eip.my-terraform-eip.public_ip
}

output "server_private_ip" {
  value = aws_eip.my-terraform-eip.private_ip
}
