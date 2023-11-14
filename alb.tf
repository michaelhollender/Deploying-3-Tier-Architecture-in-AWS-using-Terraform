###########################
## Web App Load Balancer ##
###########################

resource "aws_lb" "application-load-balancer" {
  name                       = "web-external-load-balancer"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.alb-security-group.id]
  subnets                    = [aws_subnet.public-subnet-1.id, aws_subnet.public-subnet-2.id, aws_subnet.public-subnet-3.id]
  enable_deletion_protection = false

  tags = {
    Name = "App Load Balancer"
  }
}

resource "aws_lb_target_group" "alb_target_group" {
  name     = "appbalancertg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc_01.id
}

resource "aws_lb_target_group_attachment" "web_attachment" {
  target_group_arn = aws_lb_target_group.alb_target_group.arn
  target_id        = aws_instance.ThreeTierWebLaunchTemplate.id
  port             = 80
}

# Create a listener on port 80 with redirect action
resource "aws_lb_listener" "alb_http_listener" {
  load_balancer_arn = aws_lb.application-load-balancer.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = 443
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }
}


#######################
## Load Balancer DNS ##
#######################

output "lb_dns_name" {
  description = "DNS name of the Load Balancer"
  value       = aws_lb.application-load-balancer.dns_name
}