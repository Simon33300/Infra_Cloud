# Infrastructure Terraform - Documentation

## Cloud choisi
Google Cloud Platform (GCP)

## Région principale
us-central1

## Conventions de nommage
- Les noms de ressources suivent le format :  
  `<préfixe>-<nom>-<suffixe>`  
- Exemple : `app-web-prod`, `db-main-dev`
- Utiliser uniquement des minuscules, des tirets (-), pas d’espaces ni de caractères spéciaux.

## Tags / Labels obligatoires
Chaque ressource doit avoir au minimum les labels suivants :  
- `App` : nom de l’application ou du service  
- `Environment` : environnement (exemple : dev, staging, prod)  
- `Owner` : responsable ou équipe  
- `CostCenter` : code centre de coût (facultatif mais recommandé)

---

## Exemple de tags dans Terraform (GCP)

```hcl
resource "google_compute_instance" "example" {
  # ... autres configs ...

  labels = {
    App         = "myapp"
    Environment = "prod"
    Owner       = "team-infra"
    CostCenter  = "CC1234"
  }
}
