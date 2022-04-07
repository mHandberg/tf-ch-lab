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
    zone = var.zone
    
}

/* Dette er til Task 3 i challengen.


module "storage" {
    source = "./modules/storage"
    bucketname = var.bucketname
    zone = var.zone
}

#Backend config, altså hvor tfstate filene blir lagret.
#Hvis dette ikke er inkludert så er standard i root.
terraform {
  backend "gcs" {
    bucket  = "" #Denne kan ikke være variabel.
    prefix  = "terraform/state"
  }
}

*/