module "ecr" {
  for_each = var.create_ecr ? [1] : []
  source = "terraform-aws-modules/ecr/aws"

  repository_name = "${var.prefix_name}-ecr"
  repository_type = "public"

  repository_lifecycle_policy = jsonencode({
    rules = [
      {
        rulePriority = 1,
        description  = "Keep last 2 images",
        selection = {
          tagStatus     = "tagged",
          countType     = "imageCountMoreThan",
          countNumber   = 2
        },
        action = {
          type = "expire"
        }
      }
    ]
  })
}