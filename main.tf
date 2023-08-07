module "vpc" {
  source = "./VPC"
  #vpc_cidr = var.vpc_cidr2

}


module "Public-Subnet" {
  source = "./PUB_SUB"
  #vpc_cidr = var.vpc_cidr2
  vpc_id = module.vpc.vpc_id


}


module "aws_internet_gateway" {
  source = "./IGW"
  vpc_id = module.vpc.vpc_id
  
}

module "Public_Route_table" {
  source = "./PUB_SUB_ROUTE" 
  vpc_id = module.vpc.vpc_id
  igw_id = module.aws_internet_gateway.igw_id
}


module "Public_Route_Association" {
  source = "./PUB_RT_ASSOCIATION"
  pubtable_id = module.Public_Route_table.pubtable_id
  PUB_SUB1 = module.Public-Subnet.PUB_SUB1
    
  }

module "NAT_GATEWAY" {
  source = "./NAT"
  PUB_SUB1 = module.Public-Subnet.PUB_SUB1

  
}



module "App-Subnets" {
  source = "./APP_SUB"
  vpc_id = module.vpc.vpc_id

}

module "App_Route_table" {
  source = "./APP_SUB_ROUTE"
  natgateway_id = module.NAT_GATEWAY.natgateway_id
   vpc_id = module.vpc.vpc_id

}


module "App_Route_table_Association" {
  source = "./APP_ROUTE_ASSOCIATION"
  APP_SUB1 = module.App-Subnets.APP_SUB1
  apptable_id = module.App_Route_table.apptable_id
}



module "DB-Subnet" {
  source = "./DB_SUB"
  vpc_id = module.vpc.vpc_id

}

module "DB_Route_Table" {
  source = "./DB_SUB_ROUTE"
  natgateway_id = module.NAT_GATEWAY.natgateway_id
   vpc_id = module.vpc.vpc_id
}


module "DB_Route_Table_Association" {
  source = "./DB_RT_ASSOCIATION"
  DB_SUB1 = module.DB-Subnet.DB_SUB1
  dbtable_id = module.DB_Route_Table.dbtable_id
}