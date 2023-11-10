##############################
## Route Table for App Tier ##
##############################

resource "aws_route_table" "private-route-table" {
    vpc_id = aws_vpc.vpc_01.id

    route {
        cidr_block     = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.3_Tier_NAT.vpc_id
    }

    tags = {
        Name = "3-Tier-Private-Route-Table"
    }
}


####################################
## Route Association for App Tier ##
####################################

resource "aws_route_table_association" "nat_route_app_1" {
    subnet_id      = aws_subnet.private-subnet-1.id
    route_table_id = aws_route_table.private-route-table.id
}

resource "aws_route_table_association" "nat_route_app_2" {
    subnet_id      = aws_subnet.private-subnet-2.id
    route_table_id = aws_route_table.private-route-table.id
}

resource "aws_route_table_association" "nat_route_app_3" {
    subnet_id      = aws_subnet.private-subnet-3.id
    route_table_id = aws_route_table.private-route-table.id
}


###################################
## Route Association for DB Tier ##
###################################\

resource "aws_route_table_association" "nat_route_db_1" {
    subnet_id      = aws_subnet.private-subnet-4.id
    route_table_id = aws_route_table.private-route-table.id
}

resource "aws_route_table_association" "nat_route_db_2" {
    subnet_id      = aws_subnet.private-subnet-5.id
    route_table_id = aws_route_table.private-route-table.id
}

resource "aws_route_table_association" "nat_route_db_3" {
    subnet_id      = aws_subnet.private-subnet-6.id
    route_table_id = aws_route_table.private-route-table.id
}