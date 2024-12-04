# variables.tf (Root Variables)


/****************************
VPC
**************************** */

# VPC Configuration
variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets."
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets."
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones for the subnets."
  type        = list(string)
}

/****************************
EC2
**************************** */
variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use"
  type        = string
}

variable "sg_name" {
  description = "The name of the Security Group"
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
  description = "Enable allocation of a public IP address"
  type        = bool
}


