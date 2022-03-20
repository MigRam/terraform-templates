resource "aws_lb_target_group_attachment" "ec2_attach" {
  count            = length(aws_instance.web-server)
  target_group_arn = aws_lb_target_group.target_group.arn
  target_id        = aws_instance.web-server[count.index].id
}