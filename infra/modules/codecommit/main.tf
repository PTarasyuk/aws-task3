resource "aws_codecommit_repository" "website_repo" {
  repository_name = var.repository_name

  default_branch = "master"
}