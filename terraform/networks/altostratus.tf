# Network Resources #
resource "google_compute_network" "altostratus" {
	name = "altostratus-vpc"
	auto_create_subnetworks = false # I create manually each subnet to manage easier my virtual private cloud (VPC) #
}
