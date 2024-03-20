output "url_for_website" {
  value = "http://${aws_s3_bucket.name.bucket}.s3-website-${var.region}.amazonaws.com"
}
