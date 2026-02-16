output "bucket_name" {
  value       = aws_s3_bucket.website.id
  description = "S3 bucket name"
}

output "website_endpoint" {
  value       = aws_s3_bucket_website_configuration.website.website_endpoint
  description = "S3 website endpoint URL"
}

output "bucket_arn" {
  value       = aws_s3_bucket.website.arn
  description = "S3 bucket ARN"
}
