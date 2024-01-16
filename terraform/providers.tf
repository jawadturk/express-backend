
terraform {
    backend "gcs" { 
      bucket  = "terraform-state-express-backend"
      prefix  = "terraform/state"
    }

    required_providers {
      google = {
        source  = "hashicorp/google"
        version = "4.57.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region = var.region
}