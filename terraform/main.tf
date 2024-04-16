variable "project_id" {}
variable "region" {}
variable "network" {}
variable "subnetwork" {}
variable "machine_type" {}
variable "instance_name" {}
variable "instance_zone" {}
variable "instance_subnetwork" {}
variable "instance_type" {
	default = "n1-standard-1"
}
variable "wordpress_image" {
	default = "wordpress:latest"
}
