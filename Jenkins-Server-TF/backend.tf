terraform {
  backend "s3" {
    bucket       = "dev-707938860219-tf-bucket"
    region       = "us-east-1"
    key          = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/Jenkins-Server-TF/terraform.tfstate"
    encrypt      = true
    use_lockfile = true
  }
  required_version = ">=1.13.3"
  required_providers {
    aws = {
      version = ">= 6.51.0"
      source  = "hashicorp/aws"
    }
  }
}