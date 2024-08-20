output "instance_ips" {
  value = aws_instance.web[*].public_ip
}

output "elb_dns_name" {
  value = aws_lb.web_lb.dns_name
}
