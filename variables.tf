variable "region" {
  default = "us-east-1"

}

variable "aws_s3_bucket" {
    default = "my-santhosh-bucket"
  
}

variable "key" {
    default = "index.html"

}

variable "source" {
    default = "index.html"
  
}

variable "acl" {
    default = "public-read"
  
}

variable "object_ownership" {
    default = "BucketOwnerPreferred"
  
}
