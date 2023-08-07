// 2 Private  Subnets Creation

# Private subnet creation
resource "aws_subnet" "private" {
  count  = length(var.subnet_tag)
  vpc_id = var.vpc_id
  #cidr_block        = element(var.private_subnet_frontend, count.index)
  cidr_block        = var.private_sub_cidr[count.index]
  availability_zone = var.az
  tags = {
    Name = var.subnet_tag[keys(var.subnet_tag)[count.index]]
  }
}