resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    instance_tenancy = "default"
    enable_dns_hostnames = true
  tags = {
    "Name" = "MY-VPC"
  }
}

resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.main.id

  tags = {
    "Name" = "MY-IGW"
  }
  
}


