# AWS S3 Bucket Resource
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = var.tags
}



