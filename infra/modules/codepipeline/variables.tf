variable "pipeline_name" {
  description = "The name of the CodePipeline"
  type        = string
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "repository_name" {
  description = "The name of the CodeCommit repository"
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role for CodePipeline"
  type        = string
}
