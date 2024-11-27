resource "aws_route_table" "production-private" {
  vpc_id = aws_vpc.hungry-wolves-prod.id
    tags = {
    Name = "prod-private"
  }
route {
    cidr_block = "0.0.0.0/0"               
    gateway_id = aws_nat_gateway.nat.id
  }

  route {
    cidr_block = "10.0.0.0/8"               
    transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  }

}

resource "aws_route_table" "test-private" {
  vpc_id = aws_vpc.hungry-wolves-test.id
  
    tags = {
    Name = "test-private"
  }
route {
    cidr_block = "10.0.0.0/8"               
    transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  }

}

resource "aws_route_table" "dev-private" {
  vpc_id = aws_vpc.hungry-wolves-dev.id

    tags = {
    Name = "dev-private"
  }
route {
    cidr_block = "10.0.0.0/8"               
    transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  }

}

resource "aws_route_table" "production-public" {
  vpc_id = aws_vpc.hungry-wolves-prod.id
  tags = {
    Name = "public"
  }
route {
    cidr_block = "0.0.0.0/0"               
    gateway_id = aws_internet_gateway.igw.id
  }
route {
    cidr_block = "10.0.0.0/8"               
    transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  }
}

resource "aws_route_table_association" "private-us-east-1a" {
  subnet_id      = aws_subnet.private-us-east-1a.id
  route_table_id = aws_route_table.production-private.id
}

resource "aws_route_table_association" "private-us-east-1b" {
  subnet_id      = aws_subnet.private-us-east-1b.id
  route_table_id = aws_route_table.test-private.id
}
resource "aws_route_table_association" "private-us-east-1c" {
  subnet_id      = aws_subnet.private-us-east-1c.id
  route_table_id = aws_route_table.dev-private.id
}


#public

resource "aws_route_table_association" "public-us-east-1a" {
  subnet_id      = aws_subnet.public-us-east-1a.id
  route_table_id = aws_route_table.production-public.id
}
/*
resource "aws_route_table_association" "public-us-east-1b" {
  subnet_id      = aws_subnet.public-us-east-1b.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-us-east-1c" {
  subnet_id      = aws_subnet.public-us-east-1c.id
  route_table_id = aws_route_table.public.id
}*/