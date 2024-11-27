resource "aws_ec2_transit_gateway" "tgw" {
  description = "homework"
  tags = {
    Name = "MyTGW"
  }
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tgwa" {
  subnet_ids         = [aws_subnet.public-us-east-1a.id]
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  vpc_id             = aws_vpc.hungry-wolves-prod.id
}
resource "aws_ec2_transit_gateway_vpc_attachment" "tgwb" {
  subnet_ids         = [aws_subnet.private-us-east-1b.id]
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  vpc_id             = aws_vpc.hungry-wolves-test.id
}
resource "aws_ec2_transit_gateway_vpc_attachment" "tgwc" {
  subnet_ids         = [aws_subnet.private-us-east-1c.id]   
  transit_gateway_id = aws_ec2_transit_gateway.tgw.id
  vpc_id             = aws_vpc.hungry-wolves-dev.id
}