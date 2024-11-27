resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.hungry-wolves-prod.id

  tags = {
    Name    = "app1_IG"
    Service = "application1"
    Owner   = "alex"
    Planet  = "earth"
  }
}
