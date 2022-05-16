output "bucket_id" {
  description = "ID of the cool bucket"
  value       = try(aws_s3_bucket.this.id, "")
}
