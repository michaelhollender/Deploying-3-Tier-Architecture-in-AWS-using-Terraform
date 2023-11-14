###################################
## ASG for Web Presentation Tier ##
###################################

resource "aws_launch_template" "auto-scaling-group" {
  name_prefix   = "auto-scaling-group"
  image_id      = "ami-05c13eab67c5d8861"
  instance_type = "t2.micro"
  user_data     = file("install-apache.sh")
  key_name      = "three_tier_rsa_key"
  network_interfaces {
    subnet_id       = aws_subnet.public-subnet-1.id
    security_groups = [aws_security_group.webserver-security-group.id]
  }
}

resource "aws_autoscaling_group" "asg-1" {
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  desired_capacity   = 3
  max_size           = 6
  min_size           = 3

  launch_template {
    id      = aws_launch_template.auto-scaling-group.id
    version = "$Latest"
  }
}


##############################
## ASG for Application Tier ##
##############################

resource "aws_launch_template" "auto-scaling-group-private" {
  name_prefix   = "auto-scaling-group-private"
  image_id      = "ami-05c13eab67c5d8861"
  instance_type = "t2.micro"
  key_name      = "three_tier_rsa_key"

  network_interfaces {
    subnet_id       = aws_subnet.private-subnet-1.id
    security_groups = [aws_security_group.ssh-security-group.id]
  }
}

resource "aws_autoscaling_group" "asg-2" {
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
  desired_capacity   = 3
  max_size           = 6
  min_size           = 3

  launch_template {
    id      = aws_launch_template.auto-scaling-group-private.id
    version = "$Latest"
  }
}