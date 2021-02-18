data "google_compute_image" "monit" {
  project = var.project_id
  family  = var.os_image_family
}
###############################

resource "google_compute_instance" "vm_instance-2" {
  name         = "terraform-instance-2"
  machine_type = "g1-small"
  zone       = "asia-southeast2-a"
  desired_status = "RUNNING"
#  desired_status = "TERMINATED"
  tags        = ["ssh"] 
  boot_disk {
    initialize_params {
      image = data.google_compute_image.monit.self_link
    }
  }

  network_interface {
  subnetwork = google_compute_subnetwork.subnet-vpn-2.self_link

    access_config {
    }
  }
}
