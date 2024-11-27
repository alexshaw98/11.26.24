# this  makes  vpc.id which is aws_vpc.apphungry-wolves-prod1.id
resource "aws_vpc" "hungry-wolves-prod" {
  cidr_block = "10.80.0.0/16"

  tags = {
    Name = "hungry-wolves-Prod"
    Service = "production"
    Owner = "alex"
    Planet = "earth"
  }
}

# this  makes  vpc.id which is aws_vpc.hungry-wolves-Test.id
resource "aws_vpc" "hungry-wolves-test" {
  cidr_block = "10.81.0.0/16"

  tags = {
    Name = "hungry-wolves-Test"
    Service = "test"
    Owner = "alex"
    Planet = "earth"
  }
}

# this  makes  vpc.id which is aws_vpc.hungry-wolves-Dev.id
resource "aws_vpc" "hungry-wolves-dev" {
  cidr_block = "10.82.0.0/16"

  tags = {
    Name = "hungry-wolves-Dev"
    Service = "development"
    Owner = "alex"
    Planet = "earth"
  }
}