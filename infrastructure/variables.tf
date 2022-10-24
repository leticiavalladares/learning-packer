variable "ami_name" {
  description = "The name of the ami"
  type        = string
}

variable "aws_ami_owner" {
  description = "The owner id of the ami"
  type        = string
}

variable "keypair" {
  description = "The owner id of the ami"
  type        = string
}

variable "aws_region" {
  description = "Region to deploy"
  type        = string
}

variable "pub_subnet" {
  description = "Name of public subnet a"
  type        = string
}

variable "vpc_name" {
  description = "Name of vpc"
  type        = string
}

variable "instance_type" {
  description = "Type of aws instance"
  type        = string
}

variable "security_group_id" {
    description = "Name of security group"
    type        = string
}