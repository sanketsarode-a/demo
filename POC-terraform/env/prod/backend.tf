terraform {
  backend "s3" {
    bucket         = "terraform-aws-poc-001"  # Replace with your S3 bucket name
    key            = "POC-terraform/env/prod/terraform.tfstate"  # State file path
    region         = "your-region"                  # Replace with your AWS region
    encrypt        = true                           # Encrypt state file
# Optional, for state locking
  }
}
