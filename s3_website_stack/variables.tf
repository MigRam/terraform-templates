# required AWS account variables

variable "access_key" {
  description = "Access Key"
  type        = string
}

variable "secret_key" {
  description = "Secret Key"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}

# specific variables for the S3 stack

variable "root_domain" {
  description = "Root Domain"
  type        = string
  default     = "blog"
}

variable "blog_bucket_subdomain" {
  description = "Blog Bucket Subdomain"
  type        = string
  default     = "demo"
}