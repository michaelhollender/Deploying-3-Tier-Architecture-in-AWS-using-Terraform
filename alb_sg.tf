######################################
## SG Application Load Balancer ##
######################################

resource "aws_security_group" "alb-security-group" {
    name        = "ALB Security Group"
    description = "Enable http/https access on port 80/443"
    vpc_id      = aws_vpc.vpc_01.id

    ingress {
        description = "http access"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "https access"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "ping access"
        from_port = 8
        to_port   = 0
        protocol  = "icmp"
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "ALB Security Group"
    }
}