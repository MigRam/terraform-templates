locals {
  common_tags = {
    Owner   = "dev-team"
    service = "engineering"
  }
  time = formatdate("DD MMM YYYY HH:mm:ss", timestamp())
}