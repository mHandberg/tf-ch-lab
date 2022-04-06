terraform {
  required_providers {
    google = { source = "hashicorp/google"}
  }
}

provider "google" {
  project = var.project_id
  region = var.region
  zone = var.zone
}

module "instances" {
    source = "./modules/instances"
    project_id = var.project_id
    region = var.region
    zone = var.zone
    
}


module "storage" {
    source = "./modules/storage"
    project_id = var.project_id
    name = var.bucketname
}