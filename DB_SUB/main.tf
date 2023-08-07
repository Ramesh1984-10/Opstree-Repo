//Private Database Subnets Creation

# Private subnet creation
resource "aws_subnet" "db-private" {
  vpc_id = var.vpc_id
  #cidr_block        = element(var.private_subnet_frontend, count.index)
  cidr_block        = var.db-private_sub_cidr
  availability_zone = var.az
  tags = {
    Name = "DB-Subnet"
  }
}