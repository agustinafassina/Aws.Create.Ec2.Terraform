variable "region" {
  description = "AWS region to deploy resources"
}

variable "ami_id" {
  description = "ID of the AMI to use for the EC2 instance"
}

variable "instance_type" {
  description = "Ec2 instance type"
}

variable "key_name" {
  description = "Name of the key pair to access the instance"
}

variable "instance_name" {
  description = "Instance name"
}

variable "security_group_name" {
  description = "Group name"
}

variable "vpc_id" {
  description = "Vpc id"
}

variable "user_instance" {
  description = "Username for the instance"
}

variable "access_key_path" {
  description = "Key path for the instance"
}
