provider "aws" {
    region = var.region
}

resource "aws_s3_bucket" "name" {
    bucket = var.aws_s3_bucket
   
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.name.id
  key    = var.key
  source = var.source
  acl = var.acl
  content_type = "text/html"
}

resource "aws_s3_bucket_ownership_controls" "ownership" {
  bucket = aws_s3_bucket.name.id
  rule {
    object_ownership = var.object_ownership
  }
  
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  depends_on = [ 
    aws_s3_bucket_ownership_controls.ownership, 
    aws_s3_bucket_public_access_block.access_for_bucket ]

    bucket = aws_s3_bucket.name.id
    acl = var.acl
  
}

resource "aws_s3_bucket_public_access_block" "access_for_bucket" {
  bucket = aws_s3_bucket.name.id

  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false
  
}

resource "aws_s3_bucket_website_configuration" "name" {
    bucket = aws_s3_bucket.name.id

    index_document {
      suffix = var.key
    }
  
}

output "url_for_website" {
  value = "http://${aws_s3_bucket.name.bucket}.s3-website-${var.region}.amazonaws.com"
}
