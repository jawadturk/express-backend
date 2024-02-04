resource "google_service_account" "service_account" {
  account_id   = "my-sa-1"
  display_name = "Service Account One"
}

resource "google_cloud_run_v2_service" "default" {
  name     = "cloudrun-service"
  location = "us-central1"
  ingress = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = "us-central1-docker.pkg.dev/express-backend-411116/container-images/express-backend:1.0.1"
    }
  }
}