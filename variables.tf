variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "ID of the AMI to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the AWS key pair used to access the instance"
  type        = string
}

variable "instance_name" {
  description = "Instance name (prefixed with tf-<workspace>-)"
  type        = string
}

variable "security_group_name" {
  description = "Security group name (prefixed with tf-<workspace>-)"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where the security group is created"
  type        = string
}

variable "user_instance" {
  description = "SSH username for the AMI (e.g. ec2-user for Amazon Linux, ubuntu for Ubuntu)"
  type        = string
  default     = "ec2-user"
}

variable "access_key_path" {
  description = "Local path to the private key (.pem), used in the SSH command output"
  type        = string
}

variable "allowed_ssh_cidrs" {
  description = "CIDR blocks allowed to connect via SSH (use your IP, e.g. 203.0.113.10/32)"
  type        = list(string)

  validation {
    condition     = length(var.allowed_ssh_cidrs) > 0
    error_message = "Provide at least one CIDR block for SSH access."
  }
}
