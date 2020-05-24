variable "vpc_cidr"{
  default = "10.10.0.0/22"
}
variable "tenancy"{
default = "dedicated"
}

variable "vpc_id" {}

variable "subnet_cidr" {}

variable "aws_internet_gateway" {}
