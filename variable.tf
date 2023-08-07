variable "vpc_cidr2" {
  type        = string
  description = "main vpc cidr"

}
variable "public_sub_cidr2" {
  type = string

}

variable "private_sub_cidr2" {
  type = list(string)

}

variable "db-private_sub_cidr2" {
  type = string

}

variable "az_2" {
  type = string
}

variable "subnet_tag2" {
  description = "Define Subnet Names"
  type        = map(string)
}


variable "public-rt-cidr2" {
  type        = string
  description = "private route table cidr and nat gateway"

}

