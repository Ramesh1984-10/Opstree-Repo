//Public Route Table creation

resource "aws_route_table" "Public-RT" {
    vpc_id = var.vpc_id
    route {
        cidr_block = var.public-rt-cidr
        gateway_id = var.igw_id
    }

    tags = {
    Name = "Public-route"
  }
  
}