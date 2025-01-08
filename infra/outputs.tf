output "codecommit_http_url" {
  value = module.codecommit.clone_url_http
}

output "codecommit_ssh_url" {
  value = module.codecommit.clone_url_ssh
}

output "website_url" {
  value = module.s3.website_url
  
}
