terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  credentials = file("C:\\Users\\simon\\Downloads\\mon-projet-gcp-479512-7ba205f41a75.json")
}

resource "google_storage_bucket" "app_bucket" {
  name     = "${var.app_name}-${var.environment}"
  location = var.region
  labels   = var.labels

  uniform_bucket_level_access = true
}
