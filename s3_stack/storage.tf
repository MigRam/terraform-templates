resource "aws_s3_bucket" "blog-bucket-2022" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_acl" "bucket-acl" {
  bucket = var.bucket_name
  acl    = "private"
}

resource "aws_s3_object" "obj1" {
  for_each     = fileset("html/", "*")
  bucket       = aws_s3_bucket.blog-bucket-2022.id
  key          = each.value
  source       = "html/${each.value}"
  etag         = filemd5("html/${each.value}")
  content_type = "text/html"
}

