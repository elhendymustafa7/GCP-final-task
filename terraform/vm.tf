
resource "google_compute_instance" "default" {
  name         = "flask-vm"
  machine_type = "f1-micro"
  zone         = "us-west1-a"
  tags         = ["ssh"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    subnetwork = google_compute_subnetwork.management.id
  }
   service_account {
    email  = google_service_account.SA.email
    scopes = ["cloud-platform"]
  }
   metadata_startup_script="${file("./script.sh")}"
}
