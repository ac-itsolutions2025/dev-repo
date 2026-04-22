provider "github" {
  token = var.github_token
}

resource "github_repository" "production-repo" {
  name        = "prod-repo"
  description = "Repo for our production app"
  visibility  = "private"
  auto_init   = true
}

resource "github_repository" "staging-repo" {
  name        = "staging-repo"
  description = "Repo for our staging app"
  visibility  = "public"
  auto_init   = true
}

resource "github_repository" "development-repo" {
  name        = "dev-repo"
  description = "Repo for our development app"
  visibility  = "public"
  auto_init   = true
}