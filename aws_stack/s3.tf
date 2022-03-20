resource "aws_s3_bucket" "mys3" {
  bucket = "migram-dev-bucket-2022"
}

output "mys3Bucket" {
  value = aws_s3_bucket.mys3.bucket
}