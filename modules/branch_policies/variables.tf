variable "github_token" {
  description = "GitHub personal access token"
  default = "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"
}

variable "existing_repository" {
  description = "List of repositories to configure"
  default = "srujan259/argocd"

}

variable "snyk_check_name" {
  description = "The name of the Snyk status check"
  default = "snyk-check"
}
