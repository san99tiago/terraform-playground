output "instance_ips" {
  value = aws_instance.this.*.public_ip
}

output "instance_tags" {
  value = aws_instance.this.*.tags
}
