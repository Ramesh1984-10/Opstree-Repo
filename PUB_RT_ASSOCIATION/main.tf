// Public route table association

resource "aws_route_table_association"  "public-RT-Association" {
    subnet_id = var.PUB_SUB1
    route_table_id = var.pubtable_id
}