# terraform.tfvars (Root Variable Values)
aws_access_key = "AKIA3CMCCBPYG566E7PE"
aws_secret_key = "9yg2qkmrDCbFjtMY77sVTFt9o1IRwiQfqp49FGe/"


# AWS Configuration

aws_region     = "us-east-1"  # Specify your desired AWS region

/****************************
VPCs
**************************** */
# VPC Configuration
vpc_name            = "ariba-prod-vpc"
vpc_cidr            = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones  = ["us-east-1a", "us-east-1b"]

#us-east-1a, us-east-1b, us-east-1c,
/****************************
Security group
**************************** */
sg_name = "ariba-prod-my-sg"

/****************************

EC2
**************************** */
ami_id          = "ami-0866a3c8686eaeeba"  # Replace with a valid AMI ID for your region
instance_type   = "t2.micro"
instance_name   = "ariba-prod"
admin_username  = "admin"
admin_password  = "password"  # Ensure strong password practice
enable_public_ip = true

