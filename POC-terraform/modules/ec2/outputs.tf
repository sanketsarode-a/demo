# ec2/outputs.tf (EC2 Module Outputs)

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "The public IP address of the instance, if assigned"
  value       = aws_instance.web.public_ip
}

output "instance_type" {
  description = "The type of the EC2 instance"
  value       = aws_instance.web.instance_type  # Export instance type
}

output "ami_id" {
  description = "The AMI ID of the EC2 instance"
  value       = aws_instance.web.ami             # Export AMI ID
}

output "subnet_id" {
  description = "The subnet ID where the EC2 instance is created"
  value       = aws_instance.web.subnet_id        # Export subnet ID
}

output "security_group_ids" {
  description = "The security group IDs associated with the EC2 instance"
  value       = aws_instance.web.vpc_security_group_ids  # Export security group IDs
}