resource "aws_ecr_repository" "hello_api" {
  name                 = "hello-api"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

output "ecr_repository_url" {
  value = aws_ecr_repository.hello_api.repository_url
}
