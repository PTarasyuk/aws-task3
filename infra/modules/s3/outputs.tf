output "website_url" {
  value = "http://${aws_s3_bucket_website_configuration.website_config.website_endpoint}"
}

output "bucket_name" {
  value = aws_s3_bucket.website_bucket.id
}
