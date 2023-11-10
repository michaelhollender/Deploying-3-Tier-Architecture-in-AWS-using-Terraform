######################
## SG Database Tier ##
######################

resource "aws_security_group" "database-security-group" {
    name        = "Database Server Security Group"
    description = "Enable MYSQL Access on Port 3306"
    vpc_id = aws_vpc.vpc_01.id 

    ingress {
        description = "MYSQL Access"
        from_port   = "3306"
        to_port     = "3306"
        protocol    = "tcp"
        security_group = ["{aws_security_group.webserver-security-group.id}"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "Database Security Group"
    }
}