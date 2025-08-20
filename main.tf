provider "aws" {
  region = var.region
}

locals  {
  instance_name       = "tf-${terraform.workspace}-${var.instance_name}"
}


resource "aws_instance" "test_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids      = [aws_security_group.tf-ecs-public-sg.id]

  tags = {
    Name = local.instance_name
  }
}