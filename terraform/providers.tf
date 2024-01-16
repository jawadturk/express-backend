
terraform {
    backend "gcs" { 
      bucket  = "terraform-state-express-backend"
      prefix  = "terraform/state"
    }
}

provider "google" {
  project = var.project_id
  region = var.region
}