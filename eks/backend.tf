terraform {
  backend "s3" {
    bucket         = "s10-terraform-state-bucket-learn2earn"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"   # optional but good for locking
  }
}