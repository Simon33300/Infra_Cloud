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
  credentials = file("C:\Users\simon\Downloads\projet-simonwadin-e1b9759c35a5.json")
}

resource "google_storage_bucket" "app_bucket" {
  name     = "${var.app_name}-${var.environment}-bucket"
  location = var.region
  labels   = var.labels

  uniform_bucket_level_access = true
}
