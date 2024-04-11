variable "project_id" {}
variable "region" {}
variable "instance_name" {}
variable "instance_zone" {}
variable "instance_type" {
	default = "n1-standard-1"
}
variable "wordpress_image" {
	default = "wordpress:latest"
}

module "wordpress" {
	source			= "github.com/francryptook/altostratus-gcp-challenge"
	project_id		= var.project_id
	region			= var.region
	network			= google_compute_network.altostratus.name
	subnetwork		= google_compute_network.altostratus.self_link
	machine_type	= var.machine_type
	instance_name	= var.instance_name
	instance_zone	= var.instance_zone
	wordpress_image	= var.wordpress_image
}
