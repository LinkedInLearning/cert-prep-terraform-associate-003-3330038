# Variables with default values
variable "bucket_name" {
  description = "Name for the S3 bucket"
  type        = string
  
}



# Tags variable
variable "tags" {
  description = "A map of tags for the S3 bucket"
  type        = map(string)
  
  }

