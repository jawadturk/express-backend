terraform {
    backend "gcs" { 
      bucket  = "terraform-state-jb-cicdproject"
      prefix  = "dev"
    }
}

provider "google" {
  project = var.project
  region = var.region
}