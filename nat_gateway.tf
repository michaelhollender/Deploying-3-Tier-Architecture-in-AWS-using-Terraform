#################
## NAT Gateway ##
#################

resource "aws_eip" "eip_nat" {
  domain = "vpc"

  tags = {
    Name = "eip1"
  }
}

resource "aws_nat_gateway" "Three_Tier_NAT" {
  allocation_id = aws_eip.eip_nat.id
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    Name = "3-Tier-NAT"
  }
}