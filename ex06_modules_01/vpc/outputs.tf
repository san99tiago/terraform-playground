output "output_vpc_id" {
  description = "ID of the cool VPC"
  value       = try(aws_vpc.my_vpc.id, "")
}