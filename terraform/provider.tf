provider "google" {
  project     = var.project
  region      = var.region
}

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.1"
    }
  }
}

provider "docker" {
  
  host = "unix:///var/run/docker.sock"
  

  registry_auth {
    address = "us.gcr.io"
    config_file = pathexpand("~/.docker/config.json")
  }
}

resource "google_project_service" "compute" {
  service = "compute.googleapis.com"
}
resource "google_project_service" "container" {
  service = "container.googleapis.com"
}