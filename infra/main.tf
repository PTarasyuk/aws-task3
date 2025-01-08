terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.82"
    }
  }

  required_version = ">= 1.10,< 2.0"
}

provider "aws" {
  region = var.region
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "website-bucket"
}

module "codecommit" {
  source          = "./modules/codecommit"
  repository_name = "website"
}

module "codepipeline" {
  source           = "./modules/codepipeline"
  pipeline_name    = "website"
  s3_bucket_name   = module.s3.bucket_name
  repository_name  = module.codecommit.repository_name
  role_arn         = aws_iam_role.codepipeline_role.arn
}

