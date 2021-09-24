resource "hcloud_server" "primary" {
  name = "${var.firstnode}"
  image = "ubuntu-20.04"
  location = var.region
  server_type = "${var.instance_type}"
  ssh_keys = ["${var.admin_key_name}"]
  user_data = templatefile("${path.module}/files/cloud-config.yml", {})
}

resource "hcloud_server_network" "private" {
    server_id = hcloud_server.primary.id
    network_id = var.private_net_id
}

resource "hcloud_server" "node" {

  count = length(var.additionalnodes)

  name = var.additionalnodes[count.index]
  image = "ubuntu-20.04"
  location = var.region
  server_type = "${var.instance_type}"
  ssh_keys = ["${var.admin_key_name}"]
  user_data = templatefile("${path.module}/files/cloud-config.yml", {})
}

resource "hcloud_server_network" "primary" {
    server_id = hcloud_server.primary.id
    network_id = var.private_net_id
}

resource "hcloud_server_network" "nodes" {
    count = length(var.additionalnodes)
    server_id = hcloud_server.node[count.index].id
    network_id = var.private_net_id
}

# Provider
terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.31.1"
    }
  }
}

/*provider "hcloud" {
    token = "${var.token}"
}*/