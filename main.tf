module "github_branch_protection" {
  source = "./modules/branch_policies/"
  github_token = "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"
  existing_repository = "srujan259/argocd"
  snyk_check_name = "snyk-check"
}