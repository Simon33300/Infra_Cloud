variable "project_id" {
  description = "ID du projet GCP"
  type        = string
}

variable "environment" {
  description = "Environnement ciblé (dev, staging, prod)"
  type        = string
}

variable "app_name" {
  description = "Nom logique de l'application"
  type        = string
}

variable "region" {
  description = "Région GCP principale"
  type        = string
  default     = "us-central1"
}

variable "labels" {
  description = "Labels/Tags génériques appliqués aux ressources"
  type        = map(string)
}
