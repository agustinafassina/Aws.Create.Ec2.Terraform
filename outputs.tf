output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.test_ec2.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.test_ec2.public_ip
}

output "security_group_id" {
  description = "ID of the security group"
  value       = aws_security_group.tf_security_group.id
}

output "ssh_command" {
  description = "Command to connect to the instance"
  value       = "ssh -i ${var.access_key_path} ${var.user_instance}@${aws_instance.test_ec2.public_ip}"
}
