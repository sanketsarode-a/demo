# security_group/variables.tf (Security Group Module Variables)

variable "sg_name" {
  description = "The name of the Security Group"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID where the Security Group will be created"
  type        = string
}

