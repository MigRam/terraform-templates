resource "aws_ebs_volume" "my_ebs" {
  availability_zone = "us-west-2a"
  size              = 10
  tags              = local.common_tags
}


output "timestamp" {
  value = local.time
}