data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_ami" "my_ubuntu_image" {
  owners           = [var.aws_ami_owner]
    
  filter {
    name   = "name"
    values = [var.ami_name]
  }
}

data "aws_subnet" "pub_subnet" {
  filter {
    name   = "tag:Name"
    values = [var.pub_subnet]
  }
}

data "aws_security_group" "sg" {
  id = var.security_group_id
}