terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("C:/Users/omkar/Downloads/terraform-328410-1a0e1f3306cc.json")

  project = "terraform-328410"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "vpc_network" {
  name         = "terraform"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
