resource "google_compute_firewall" "allow_ssh" {
  name          = "fw-ssh"
  network       = google_compute_network.vpc-2.name
  direction     = "INGRESS"
  target_tags   = ["ssh"]

  allow {
    protocol = "tcp"
    ports    = ["22","1234"]
  }
}
