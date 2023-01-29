resource "google_compute_route" "egress_internet" {
  name             = "egress-internet"
  dest_range       = "0.0.0.0/0"
  network          = google_compute_network.vpc_network.name
  next_hop_gateway = "default-internet-gateway"
}
resource "google_compute_router" "router" { 
  name    = "my-router"
  region  = google_compute_subnetwork.management.region
  network = google_compute_network.vpc_network.id
  bgp {
    asn = 64514
  }
  depends_on = [
    google_compute_network.vpc_network,google_compute_subnetwork.management
  ]
}

resource "google_compute_router_nat" "nat" {
  name                               = "my-router-nat"
  router                             = google_compute_router.router.name
  region                             = google_compute_router.router.region
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = false
    filter = "ERRORS_ONLY"
  }
  depends_on = [
    google_compute_router.router
  ]
}
