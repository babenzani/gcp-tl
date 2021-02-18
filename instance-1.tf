resource "google_compute_instance" "vm_instance-1" {
  name         = "terraform-instance-1"
  machine_type = "f1-micro"
  zone       = "asia-southeast2-a"
  tags        = ["port"] 
  boot_disk {
    initialize_params {
      image = "centos-7"
    }
  }

  network_interface {
  subnetwork = google_compute_subnetwork.subnet-vpn-1.self_link

    access_config {
    }
  }
}