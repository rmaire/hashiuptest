module "hut-nodes-v1" {
  source = "./nodes"

  firstnode           = "${var.first}"
  additionalnodes     = "${var.nodes}"

  cluster_domain      = "${var.cluster_domain}"
  token               = "${var.token}"
  region              = "${var.region}"
  instance_type       = "cx21"
  connection_key_file = "${var.connection_key_file}"
  admin_key_name      = "${var.admin_key_name}"
  private_net_id      = "${hcloud_network_subnet.internal.network_id}"
}

/*module "hut-nodes-v1" {
  source = "./nodes"

  for_each = var.nodes

  nodename            = each.value

  cluster_domain      = "${var.cluster_domain}"
  token               = "${var.token}"
  region              = "${var.region}"
  instance_type       = "cx21"
  connection_key_file = "${var.connection_key_file}"
  admin_key_name      = "${var.admin_key_name}"
  private_net_id      = "${hcloud_network_subnet.internal.network_id}"
}*/

/*output "hut-main-v1-public-ip" {
  value = "${module.k8s-main-v1.public_ip}"
}

output "hut-main-v1-private-ip" {
  value = "${module.k8s-main-v1.private_ip}"
}

output "k8s-main-v1-ssh" {
  value = format("ssh -i ~/.ssh/id_rma administrator@%s", module.k8s-main-v1.public_ip)
}*/

# Network
resource "hcloud_network" "internal" {
  name     = "internalnet-prod"
  ip_range = "10.0.2.0/24"
}

resource "hcloud_network_subnet" "internal" {
  network_id   = "${hcloud_network.internal.id}"
  type         = "server"
  network_zone = "eu-central"
  ip_range     = "10.0.2.0/24"
}

terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "1.31.1"
    }
  }
}

provider "hcloud" {
  token = "${var.token}"
}