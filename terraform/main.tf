
resource "google_compute_network" "vpc_network" {
  name                    = "gcp-final-task-vpc"
  auto_create_subnetworks = false
  mtu                     = 1460
  delete_default_routes_on_create = true
}
#didn't need this
# resource "google_compute_firewall" "rules" {

#   name    = "allow-ssh"
#   network = google_compute_network.vpc_network.id

#   allow {
#     protocol = "tcp"
#     ports    = ["22"]
#   }
#   source_ranges = ["0.0.0.0/0"]
# }
