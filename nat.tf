# Creating EIP
resource "aws_eip" "eip-for-Nat-Gateway" {
  vpc = true
}


# Creating NAT Gateway
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.eip-for-Nat-Gateway.id
  subnet_id     = aws_subnet.public_subnet.id
}
