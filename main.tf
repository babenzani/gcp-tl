// Configure the Google Cloud provider
provider "google" {
    credentials = file(var.credentials)
    region = var.region
    project = var.project_id
}

//Create VPC
resource "google_compute_network" "vpc-1" {
  name = var.vpc-1
  auto_create_subnetworks = false
}

resource "google_compute_network" "vpc-2" {
  name = var.vpc-2
  auto_create_subnetworks = false
}


