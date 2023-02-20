
#creating target group
resource "aws_lb_target_group" "tg" {
  health_check {
    interval            = 10
    path                = "/"
    protocol            = "HTTP"
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
  }
  name        = "E-tg"
  port        = 80
  protocol    = "HTTP"
  target_type = "instance"
  vpc_id      = data.aws_vpc.default.id
}

#Creating ALB

resource "aws_lb" "application_lb" {
    name = "E-alb"
    internal = false
    ip_address_type = "ipv4"
    load_balancer_type = "application"
    security_groups = [aws_security_group.EC2.id]
    subnets = data.aws_subnet_ids.subnet.ids

    tags = {
        Name = "E-alb"
    }

}

#Creating Listener

resource "aws_lb_listener" "alb_listener" {
    load_balancer_arn = aws_lb.application_lb.arn
    port = 80
    protocol = "HTTP"
    default_action {
      target_group_arn = aws_lb_target_group.tg.arn
      type = "forward"
    }
  
}

#attachment
resource "aws_lb_target_group_attachment" "ec2_attach" {
    count = length(aws_instance.EC2)
    target_group_arn = aws_lb_target_group.tg.arn
    target_id = aws_instance.EC2[count.index].id
  
}