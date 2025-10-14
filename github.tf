terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}
 
provider "github" {
  token = var.github_token
  owner = "Abhinav7560"
}
 
 
resource "github_repository" "Abhinav" {
  name        = "DevOps-Project"
  description = "Infrastructure as Code for AWS"
  visibility = "public"
 
}
 
 
variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
  sensitive   = true
}