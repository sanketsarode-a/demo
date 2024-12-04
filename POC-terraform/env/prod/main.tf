# main.tf (Root Configuration)

provider "aws" {
  region = "us-west-1"  # Replace with your desired region
}

/****************************
VPC
**************************** */
module "vpc" {
  source              = "../../modules/vpc"
  vpc_name            = var.vpc_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones  = var.availability_zones
}

# Example output for VPC ID
output "vpc_id" {
  value = module.vpc.vpc_id
}

/****************************
Security group
**************************** */
module "security_group" {
  source  = "../../modules/security_group"
  sg_name = var.sg_name
  vpc_id  = module.vpc.vpc_id
}


/****************************
EC2
**************************** */
module "ec2" {
  source              = "../../modules/ec2"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  security_group_ids = [module.security_group.sg_id]  # Reference the security group
  subnet_id          = module.vpc.private_subnet_ids[0] # Use the private subnet
  instance_name      = var.instance_name
  admin_username     = var.admin_username
  admin_password     = var.admin_password
  enable_public_ip   = var.enable_public_ip
}
