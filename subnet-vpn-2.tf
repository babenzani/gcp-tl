//Create subnet vpn 2
resource "google_compute_subnetwork" "subnet-vpn-2" {
    name = "sb-vpn-2"
    ip_cidr_range = var.subnet-vpn-2
    network = google_compute_network.vpc-2.id
    region = var.region
}