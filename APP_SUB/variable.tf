
variable "private_sub_cidr" {
    type = list(string)
    default = ["10.0.2.0/24"  , "10.0.3.0/24"]
}

variable "az" {
    type = string
    default = "us-east-1b"
}

variable "subnet_tag" {
  description = "Define Subnet Names"
  type        = map(string)
  default = {

    application      = "Application Subnet"
    frontend = "Frontend Subnet"
  }
}


variable "vpc_id" {
    type = string

  default = ""
}