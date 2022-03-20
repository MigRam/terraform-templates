resource "aws_lb" "application_lb" {
  name               = "whiz-alb"
  internal           = false
  ip_address_type    = "ipv4"
  load_balancer_type = "application"
  security_groups    = [aws_security_group.web-sg.id]

  subnets = data.aws_subnet_ids.subnet.ids
  tags = {
    Name = "whiz-labs"
  }
}