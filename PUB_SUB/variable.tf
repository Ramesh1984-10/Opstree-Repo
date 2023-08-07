variable "public_sub_cidr" {
    type = string
    default =  "10.0.1.0/24"
}

variable "az" {
    type = string
    default = "us-east-1b"
}

variable "vpc_id" {
    type = string
    default = ""
}