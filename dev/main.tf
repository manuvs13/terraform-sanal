provider "aws" {
  region = "ap-south-1"
}

module "my_vpc" {
  source = "../modules/vpc"
  vpc_cidr = ""
  tenancy = "default"
  vpc_id = "${modules.my_vpc.vpc_id}"
  subnet_cidr = ""
}


module "my_ec2" {
  source = "../modules/ec2"
  ec2_count ="1"
  ami_id = ""
  instance_type = "t2.micro"
  subnet_id = "${modules.my_vpc.subnet_id}"
}
