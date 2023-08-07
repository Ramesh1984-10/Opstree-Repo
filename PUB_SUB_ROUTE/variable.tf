variable "vpc_id" {
    type = string

  
}

variable "public-rt-cidr" {
    type = string
    description = "public route table cidr and internet gateway"
    default = "0.0.0.0/0"
  
}

variable "igw_id" {
    type = string
    default = ""
  
}


