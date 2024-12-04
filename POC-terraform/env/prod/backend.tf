terraform {
  backend "s3" {
    bucket         = "configuration000001"  # Replace with your S3 bucket name
    key            = "POC-terraform/env/prod/terraform.tfstate"  # State file path
    region         = "us-east-1"  # Replace with your AWS region
    encrypt        = true  # Encrypt state file
  }
}
