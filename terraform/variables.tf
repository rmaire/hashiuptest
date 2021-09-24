variable "cluster_domain" {}
variable "token" {}
variable "region" {}
variable "connection_key_file" {}
variable "admin_key_name" {}
variable "first" {default = "first"}
variable "nodes" {
	type    = list(string)
	default = ["second", "third", "fourth", "fifth"]
}