# Configure the Hetzner Cloud Provider
provider "hcloud" {
  token = var.hcloud_token
}

module "f_ip" {
  source  = "zoro16/floating-ip/hcloud"
  version = "1.0.0"

  create_floating_ip        = true
  floating_ip_name          = "demo-floating-ip"
  floating_ip_type          = "ipv4"
  floating_ip_home_location = "fsn1"
  floating_ip_description   = "some description"
  floating_ip_labels = {
    "name" : "cool-floating-ip"
  }
  floating_ip_delete_protection = false
}

module "rdns" {
  source = "../../"

  create_rdns         = true
  rdns_floating_ip_id = module.f_ip.floating_ip_id
  rdns_ip_address     = module.f_ip.floating_ip_ip_address
  rdns_dns_ptr        = "example.com"
}
