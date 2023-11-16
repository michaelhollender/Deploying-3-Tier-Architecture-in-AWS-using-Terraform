########################
###    Data source   ###
########################

data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}


###########################
## EC2 Instance Web Tier ##
###########################

resource "aws_instance" "ThreeTierWebLaunchTemplate" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public-subnet-1.id
  vpc_security_group_ids = [aws_security_group.webserver-security-group.id]
  key_name               = "three_tier_rsa_key"
  user_data              = file("install-apache.sh")

  tags = {
    Name = "web-asg"
  }
}


###########################
## EC2 Instance App Tier ##
###########################

resource "aws_instance" "ThreeTierAppLaunchTemplate" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private-subnet-1.id
  vpc_security_group_ids = [aws_security_group.ssh-security-group.id]
  key_name               = "three_tier_rsa_key"

  tags = {
    Name = "app-asg"
  }
}