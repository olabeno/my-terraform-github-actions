# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
 
  
  bucket = "k21-demo-github-action-tf-12nov2024"
  object_lock_enabled = false
  tags = {
     Environment = "Prod"
  }
}
