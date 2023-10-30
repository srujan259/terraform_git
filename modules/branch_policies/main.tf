provider "github" {
  token = var.github_token
}


data "github_repository" "existing_repo" {
  full_name = var.existing_repository  # Specify the full name of the existing repository
}

resource "github_branch_protection" "name" {
  
  repository_id = data.github_repository.existing_repo.id
  pattern = "main"

  required_status_checks {
    strict = true
    contexts = [var.snyk_check_name]
  }
}
