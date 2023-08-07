resource "aws_route_table_association" "DB-private-RT-Association" {
    subnet_id      = var.DB_SUB1
    route_table_id = var.dbtable_id
  
}
