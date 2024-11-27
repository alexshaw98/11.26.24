module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "private-us-east-1a"

  tags = {
    Terraform   = "true"
    Environment = "prod"

  }
}

module "ec2_instance2" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance2"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "private-us-east-1b"

  tags = {
    Terraform   = "true"
    Environment = "test"

  }
}

module "ec2_instance3" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance3"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "private-us-east-1c"

  tags = {
    Terraform   = "true"
    Environment = "dev"

  }
}