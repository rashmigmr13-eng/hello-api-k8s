terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.31"
    }
  }

  # Optional but recommended: remote state so `terraform destroy` / `apply`
  # can be run from anywhere and state isn't lost.
  # Uncomment and set your own bucket/table (created once, out of band).
  #
  # backend "s3" {
  #   bucket         = "my-terraform-state-bucket"
  #   key            = "hello-api-eks/terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "terraform-locks"
  #   encrypt        = true
  # }
}

provider "aws" {
  region = var.aws_region
}
