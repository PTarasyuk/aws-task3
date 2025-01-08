output "repository_name" {
  value = aws_codecommit_repository.website_repo.repository_name
}

output "clone_url_http" {
  value = aws_codecommit_repository.website_repo.clone_url_http
}

output "clone_url_ssh" {
  value = aws_codecommit_repository.website_repo.clone_url_ssh
}
