variable "instance_type" {
    type        = string
    description = "Source EC2 instance type"
    default     = "t3.small"
}

variable "region" {
    type        = string
    description = "AWS Region"
}

variable "ami_owner" {
    type        = string
    description = "Owner source"
}

variable "source_ami_name" {
    type        = string
    description = "Source AMI name"
}

variable "vpc_name" {
    type        = string
    description = "Name of vpc created on my AWS account"
}

variable "subnet_name" {
    type        = string
    description = "Name of a public subnet created on my AWS account"
}