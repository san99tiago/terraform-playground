output "vpc_id" {
  description = "ID of the cool VPC"
  value       = try(aws_vpc.super_simple_vpc.id, "")
}