resource "google_compute_subnetwork" "management" {
  name          = "management"
  ip_cidr_range = "10.0.1.0/24"
  region        = var.region
  network       = google_compute_network.vpc_network.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "Restricted" {
  name          = "restricted"
  ip_cidr_range = "10.0.2.0/24"
  region        = var.region
  network       = google_compute_network.vpc_network.id
  private_ip_google_access = true
  secondary_ip_range {        
    range_name    = "k8s-pod-range"
    ip_cidr_range = "10.2.2.0/24"
  }
  secondary_ip_range {
    range_name    = "k8s-service-range"
    ip_cidr_range = "10.3.2.0/24"
  }
}