resource "aws_route_table_association" "private-RT-Association" {
    count = length(var.APP_SUB1)
    subnet_id      = var.APP_SUB1[count.index]
    route_table_id = var.apptable_id
  
}