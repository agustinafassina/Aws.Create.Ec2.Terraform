# AWS settings for Terraform
region   = "us-east-1"
ami_id   = ""
key_name = ""
vpc_id   = ""

# Instance settings
instance_name   = ""
instance_type   = "t2.micro"
user_instance   = "ec2-user"
access_key_path = "./test.pem"

# Security group settings
security_group_name = ""
allowed_ssh_cidrs   = ["<your-ip>/32"]
