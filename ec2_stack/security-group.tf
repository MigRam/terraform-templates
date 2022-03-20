resource "aws_security_group" "tf_web_server_security_group" {
  name = "tf_web_server_security_group"

  description = "tf_security_group allow incoming HTTP Requests"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}