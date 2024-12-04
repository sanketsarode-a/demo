# ec2/variables.tf (EC2 Module Variables)

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use"
  type        = string
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the instance"
  type        = list(string)
}

variable "subnet_id" {
  description = "The subnet ID where the instance will be created"
  type        = string
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "admin_username" {
  description = "The admin username for the instance"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the instance"
  type        = string
}

variable "enable_public_ip" {
  description = "Whether to assign a public IP address to the instance"
  type        = bool
  
}