terraform {
    backend "gcs" { 
      bucket  = "terraform-state-jb-cicdproject"
      prefix  = "dev"
    }
    required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = var.project
  region = var.region
}