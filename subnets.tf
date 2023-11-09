###################################
## 3-Tier-WEB-1A Public Subnet 1 ##
###################################


resource "aws_subnet" "public-subnet-1" {
    vpc_id                   = aws_vpc.vpc_01.id 
    cidr_block               = var.public-subnet-1-cidr
    availability_zone        = "us-east-1a"
    map_public_ip_on_launch  = true

  tags = {
    Name = "3-Tier-WEB-1A Public Subnet 1"
  }
} 

###################################
## 3-Tier-WEB-1B Public Subnet 2 ##
###################################


resource "aws_subnet" "public-subnet-2" {
    vpc_id                  = aws_vpc.vpc_01.id
    cidr_block              = var.public-subnet-2-cidr
    availability_zone       = "us-east-1b"
    map_public_ip_on_launch = true

    tags = {
        Name = "3-Tier-WEB-1B Public Subnet 2"
    }
}

###################################
## 3-Tier-WEB-1C Public Subnet 3 ##
###################################


resource "aws_subnet" "public-subnet-3" {
    vpc_id                  = aws_vpc.vpc_01.id 
    cidr_block              = var.public-subnet-3-cidr
    availability_zone       = "us-east-1c"
    map_public_ip_on_launch = true

    tags = {
        Name = "3-Tier-WEB-1C Public Subnet 3"
    }
}

####################################
## 3-Tier-WEB-1A Private Subnet 1 ##
####################################


resource "aws_subnet" "private-subnet-1" {
    vpc_id                   = aws_vpc.vpc_01.id 
    cidr
}