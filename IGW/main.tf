# Create Internet Gateway and Attach it to VPC
# terraform aws create internet gateway

resource "aws_internet_gateway" "MY_IGW" {
  vpc_id = var.vpc_id
  tags = {
    Name = "my_gateway"
  }
}
