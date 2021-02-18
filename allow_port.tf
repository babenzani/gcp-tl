resource "google_compute_firewall" "allow_port" {
  name          = "fw-port"
  network       = google_compute_network.vpc-1.name
  direction     = "INGRESS"
  target_tags   = ["port"]

  allow {
    protocol = "tcp"
    ports    = ["1122","3344"]
  }
}
