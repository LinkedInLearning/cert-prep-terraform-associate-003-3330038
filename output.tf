# Output
output "bucket_name_output" {
  description = "The name of the created S3 bucket"
  value       = aws_s3_bucket.my_bucket.bucket
}

