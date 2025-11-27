output "bucket_name" {
  description = "Nom du bucket créé"
  value       = google_storage_bucket.app_bucket.name
}

output "bucket_id" {
  description = "ID unique du bucket"
  value       = google_storage_bucket.app_bucket.id
}

output "bucket_url" {
  description = "URL du bucket"
  value       = "gs://${google_storage_bucket.app_bucket.name}"
}
