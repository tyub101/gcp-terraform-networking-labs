resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"
  network = "my-custom-vpc"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = 1000
  target_tags   = ["ssh"]
}
