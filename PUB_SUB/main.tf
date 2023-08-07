// Public Subnet Creation
resource "aws_subnet" "pub_subnet" {
    vpc_id = var.vpc_id
    cidr_block = var.public_sub_cidr
    availability_zone = var.az
    # map_public_ip_on_launch = true

     tags = {
       "Name" = "Public Subnet"
     }
  
}





