resource "google_storage_bucket" "bucket" {
  name     = "test-bucket-random-001122-22"
  location = "us-central1"
}

resource "google_storage_bucket" "gcs_bucket" {
  name     = "test-bucket-random-00112323"
  location = "us-central1"
}