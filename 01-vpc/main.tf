provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_network" "custom_vpc" {
  name                    = "my-custom-vpc"
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}
