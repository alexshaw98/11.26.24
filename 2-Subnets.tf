#These are the public subnets
resource "aws_subnet" "public-us-east-1a" {
  vpc_id                  = aws_vpc.hungry-wolves-prod.id
  cidr_block              = "10.80.80.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1a"
    Service = "application1"
    Owner   = "alex"
    Planet  = "earth"
  }
}
/*
resource "aws_subnet" "public-us-east-1b" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.80.81.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1b"
    Service = "application1"
    Owner   = "Luke"
    Planet  = "Musafar"
  }
}

resource "aws_subnet" "public-us-east-1c" {
  vpc_id                  = aws_vpc.app1.id
  cidr_block              = "10.80.82.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    Name    = "public-us-east-1c"
    Service = "application1"
    Owner   = "earth"
    Planet  = "earth"
  }
}
*/

#These are the private subnets
resource "aws_subnet" "private-us-east-1a" {
  vpc_id            = aws_vpc.hungry-wolves-prod.id
  cidr_block        = "10.80.90.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name    = "private-us-east-1a"
    Service = "production"
    Owner   = "alex"
    Planet  = "earth"
  }
}

resource "aws_subnet" "private-us-east-1b" {
  vpc_id            = aws_vpc.hungry-wolves-test.id
  cidr_block        = "10.81.91.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name    = "private-us-east-1b"
    Service = "test"
    Owner   = "alex"
    Planet  = "earth"
  }
}

resource "aws_subnet" "private-us-east-1c" {
  vpc_id            = aws_vpc.hungry-wolves-dev.id
  cidr_block        = "10.82.92.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name    = "private-us-east-1c"
    Service = "dev"
    Owner   = "alex"
    Planet  = "earth"
  }
}