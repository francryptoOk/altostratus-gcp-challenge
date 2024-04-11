# Google Cloud Provider (GCP) Configuration #
terraform {
	required_providers {
		google = {
			source		= "hashicorp/google"
			version 	= "3.5.0" # Specific GCP version to avoid unexpected changes or updates #
		}
	}
}

provider "google" {
	project	= var.project_id
	region	= var.region
}

# Network Resources #
resource "google_compute_network" "altostratus_network" {
	name					= "altostratus-vpc"
	auto_create_subnetworks	= false # I'll create manually each subnet to manage easier my virtual private cloud (VPC) #
}

# Subnetworks #
resource "google_compute_subnetwork" "europe-southwest1-subnet" {
  name			= "europe-southwest1-subnet"
  network		= google_compute_network.altostratus_network.self_link
  ip_cidr_range	= "10.0.0.0/24"
  region		= var.region
}

# Firewall #
resource "google_compute_firewall" "altostratus-allow-http-ssh-rdp-icmp" {
	name	= "altostratus-allow-http-ssh-rdp-icmp"
	network	= google_compute_network.altostratus.self_link
	allow {
		protocol	= "tcp"
		ports		= ["22", "80", "3389"]
	}
	allow {
		protocol = "icmp"
	}
}

# WordPress Instance Resources #
module "wordpress" {
	source				= "github.com/francryptook/altostratus-gcp-challenge"
	project_id			= var.project_id
	region				= var.region
	network				= google_compute_network.altostratus.name
	subnetwork			= google_compute_network.altostratus.self_link
	machine_type		= var.machine_type
	instance_name		= var.instance_name
	instance_zone		= var.instance_zone
	instance_subnetwork	= google_compute_network.altostratus.self_link
	wordpress_image		= var.wordpress_image
}
