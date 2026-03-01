terraform {
  backend "gcs" {
    bucket  = "org-terraform-state-bucket"
    prefix  = "network/dev"
  }
}
