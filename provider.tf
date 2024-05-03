terraform {
    required_providers {
        aws = {
          source = "hashicorp/aws"
          version = "5.31.0" # aws version not a terraform version
        }
    }

    backend "s3" {
        bucket = "vpc-backend-bucket"
        key    = "eksctl-cluster"
        region = "us-east-1"
        dynamodb_table = "vpc-backend-locking"
    }
    

}

provider "aws" {
    region = "us-east-1"
}