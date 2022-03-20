variable "access_key" {
  description = "Access Key"
  type        = string
}

variable "secret_key" {
  description = "Secret Key"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Bucket Name"
  type        = string
}