//Create subnet vpn 1
resource "google_compute_subnetwork" "subnet-vpn-1" {
    name = "sb-vpn-1"
    ip_cidr_range = var.subnet-vpn-1
    network = google_compute_network.vpc-1.id
    region = var.region
}