resource "aws_ecr_repository" "meu_app_repo" {
  name                 = "meu-site-luan"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}