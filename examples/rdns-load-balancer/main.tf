# Configure the Hetzner Cloud Provider
provider "hcloud" {
  token = var.hcloud_token
}

module "lb" {
  source  = "zoro16/load-balancer/hcloud"
  version = "1.0.0"

  create_load_balancer = true

  load_balancer_name     = "my-lb"
  load_balancer_type     = "lb11"
  load_balancer_location = "nbg1"
  # load_balancer_network_zone = "eu-central"
  load_balancer_algorithm = {
    type = "least_connections"
  }
  load_balancer_delete_protection = false
  load_balancer_labels = {
    type        = "demo"
    environment = "dev"
  }

}

module "rdns" {
  source = "../../"

  create_rdns           = true
  rdns_load_balancer_id = module.lb.load_balancer_id
  rdns_ip_address       = module.lb.load_balancer_ipv4
  rdns_dns_ptr          = "example.com"
}
