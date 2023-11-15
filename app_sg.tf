########################################
## SG Application Tier (Bastion Host) ##
########################################

resource "aws_security_group" "ssh-security-group" {
  name        = "SSH Access"
  description = "Enable SSH access on port 22"
  vpc_id      = aws_vpc.vpc_01.id

  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.ssh-locate}"]
  }
/home/mastersplinter/.Scripts/.Terraform/Deploying-3-Tier-Architecture-in-AWS-Using-Terraform
  ingress {
    description = "ping access"
    from_port   = 8
    to_port     = 0
    protocol    = "icmp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "SSH Security Group"
  }
}