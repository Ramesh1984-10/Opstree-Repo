
//App and Frontend Private Route Table creation

resource "aws_route_table" "Private-RT" {
    vpc_id = var.vpc_id
    route {
        nat_gateway_id = var.natgateway_id
        cidr_block = var.public-rt-cidr
    }

    tags = {
    Name = "Private-route"
  }
}