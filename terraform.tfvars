vpc_cidr2        = "172.0.0.0/16"
public_sub_cidr2 = "172.0.1.0/24"

az_2 = "us-east-1a"

private_sub_cidr2    = ["172.0.2.0/24", "172.0.3.0/24"]
db-private_sub_cidr2 = "172.0.4.0/24"


subnet_tag2 = {
  #database      = "Database Subnet"
  application = "Application Subnet"
  frontend    = "Frontend Subnet"
}

public-rt-cidr2 = "0.0.0.0/0"

# ssh-location = "0.0.0.0/0"


