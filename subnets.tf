###################################
## 3-Tier-WEB-1A Public Subnet 1 ##
###################################

resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.vpc_01.id
  cidr_block              = var.public-subnet-1-cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

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
## 3-Tier-APP-1A Private Subnet 1 ##
####################################

resource "aws_subnet" "private-subnet-1" {
  vpc_id                  = aws_vpc.vpc_01.id
  cidr_block              = var.private-subnet-1-cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "3-Tier-APP-1A Private Subnet 1"
  }
}


####################################
## 3-Tier-APP-1B Private Subnet 2 ##
####################################

resource "aws_subnet" "private-subnet-2" {
  vpc_id                  = aws_vpc.vpc_01.id
  cidr_block              = var.private-subnet-2-cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "3-Tier-APP-1B Private Subnet 2"
  }
}


####################################
## 3-Tier-APP-1C Private Subnet 3 ##
####################################

resource "aws_subnet" "private-subnet-3" {
  vpc_id                  = aws_vpc.vpc_01.id
  cidr_block              = var.private-subnet-3-cidr
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = false

  tags = {
    Name = "3-Tier-APP-1C Private Subnet 3"
  }
}


####################################
## 3-Tier-DB-1A Private Subnet 4 ## 
####################################

resource "aws_subnet" "private-subnet-4" {
  vpc_id                  = aws_vpc.vpc_01.id
  cidr_block              = var.private-subnet-4-cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "3-Tier-DB-1A Private Subnet 4"
  }
}


####################################
## 3-Tier-DB-1B Private Subnet 5 ##
####################################

resource "aws_subnet" "private-subnet-5" {
  vpc_id                  = aws_vpc.vpc_01.id
  cidr_block              = var.private-subnet-5-cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "3-Tier-DB-1B Private Subnet 5"
  }
}


################################## #
## 3-Tier-DB-1C Private Subnet 6 ##
###################################

resource "aws_subnet" "private-subnet-6" {
  vpc_id                  = aws_vpc.vpc_01.id
  cidr_block              = var.private-subnet-6-cidr
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = false

  tags = {
    Name = "3-Tier-DB-1C Private Subnet 6"
  }
}