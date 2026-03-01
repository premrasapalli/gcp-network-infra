provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source = "../../modules/vpc"

  project_id   = var.project_id
  region       = var.region
  network_name = "org-dev-vpc"

  subnets = [
    {
      name          = "dev-us-central1-subnet-01"
      ip_cidr_range = "10.10.1.0/24"
      region        = var.region
      private_ip_google_access = true
    }
  ]
}
