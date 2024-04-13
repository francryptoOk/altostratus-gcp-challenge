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
