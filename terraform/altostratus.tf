# Network Resources #
resource "google_compute_network" "altostratus" {
	name = "altostratus-vpc"
	auto_create_subnetworks = false # I create manually each subnet to manage easier my virtual private cloud (VPC) #
}

resource "google_compute_firewall" "altostratus-allow-http-ssh-rdp-icmp" {
	name = "altostratus-allow-http-ssh-rdp-icmp"
	network = google_compute_network.altostratus.self_link
	allow {
		protocol = "tcp"
		ports = ["22", "80", "443", "3389"] # TCP 22, SSH 80, WordPress 80 and 443, HTTP 3389 #
	}
	allow {
		protocol = "icmp"
	}
}
