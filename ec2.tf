###########################
## EC2 Instance Web Tier ##
###########################

resource "aws_instance" "ThreeTierWebLaunchTemplate" {
    ami                    = "ami-"
    instance_type          = "t2.micro"
    subnet_id              = aws_subnet.public-subnet-1.id
    vpc_security_group_ids = [aws_security_group.webserver-security-group.id]
    key_name               = "3_tier_rsa_key"
    user_data              = file("install-apache.sh")

    tags = {
        Name = "web-asg"
    }
}


###########################
## EC2 Instance App Tier ##
###########################

resource "aws_instance" "ThreeTierAppLaunchTemplate" {
    ami                    = "ami-"
    install_type           = "t2.micro"
    subnet_id              = aws_subnet.private-subnet-1.id
    vpc_security_group_ids = [aws_security_group.ssh-security-group.id]
    key_name               = "3_tier_rsa_key"

    tags = {
        Name = "app-asg"
    }
}