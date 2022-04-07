resource "google_storage_bucket" "backend-bucket" {
  name = var.bucketname
  location = var.region
  uniform_bucket_level_access = true
}