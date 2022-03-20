output "tf_web_server_instance" {
  value = aws_instance.tf_web_server_instance.public_ip
}