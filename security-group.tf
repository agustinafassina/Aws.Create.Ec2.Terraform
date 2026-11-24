# EC2 instance security group
resource "aws_security_group" "tf_security_group" {
  name        = "${local.name_prefix}-${var.security_group_name}"
  description = "EC2 SSH access security group"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow SSH from allowed CIDRs"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.allowed_ssh_cidrs
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${local.name_prefix}-${var.security_group_name}"
  }
}
