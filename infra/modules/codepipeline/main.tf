resource "aws_codepipeline" "website_pipeline" {
  name     = var.pipeline_name
  role_arn = var.role_arn

  artifact_store {
    type     = "S3"
    location = var.s3_bucket_name
  }

  stage {
    name = "Source"

    action {
      name             = "Source"
      category         = "Source"
      owner            = "AWS"
      provider         = "CodeCommit"
      version          = "1"
      output_artifacts = ["SourceOutput"]
      configuration = {
        RepositoryName = var.repository_name
        BranchName     = "master"
      }
    }
  }

  stage {
    name = "Deploy"

    action {
      name             = "Deploy"
      category         = "Deploy"
      owner            = "AWS"
      provider         = "S3"
      version          = "1"
      input_artifacts  = ["SourceOutput"]
      configuration = {
        BucketName = var.s3_bucket_name
        Extract    = "true"
      }
    }
  }
}
