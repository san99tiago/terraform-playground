output "instance_ip" {
  value = aws_instance.my_first_ami_via_terraform.*.public_ip
}
