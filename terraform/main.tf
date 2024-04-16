variable "project_id" {
	description = "ID of GCP project"
}
variable "region" {
	description = "Region to deploy resources"
}
variable "network" {
	description = "Name of the network for instance"
}
variable "subnetwork" {
	description = "Name of the subnetwork for instance"
}
variable "machine_type" {
	description = "VM Type (at Compute Engine) for instance"
	default = "n1-standard-1"
}
variable "instance_name" {
	description = "Name of the instance"
}
variable "instance_zone" {
	description = "Zone where instance it's going to be located"
}
variable "instance_subnetwork" {
	description = "Subnetwork for the instance"
}
variable "wordpress_image" {
	description = "Docker image for the WordPress instance"
	default = "wordpress:latest"
}
