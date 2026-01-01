resource "google_compute_instance" "private_vm" {
  name         = "vm-private"
  machine_type = "e2-micro"
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = "my-custom-subnet"
    # No access_config → private onlyyyyy :)
  }

  tags = ["ssh"]
}
