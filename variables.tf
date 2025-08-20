variable "region" {
  description = "La región de AWS"
}

variable "ami_id" {
  description = "ID de la AMI para la instancia EC2"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
}

variable "key_name" {
  description = "Nombre de la llave SSH para acceder a la instancia"
}

variable "instance_name" {
  description = "Nombre de la instancia EC2"
}


variable "security_group_name" {
  description = "Nombre de la instancia EC2"
}

variable "vpc_id" {
  description = "Vpc id"
}

variable "user_instance" {
  description = "Username for the instance"
}
