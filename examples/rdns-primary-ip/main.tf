# Configure the Hetzner Cloud Provider
provider "hcloud" {
  token = var.hcloud_token
}


module "p_ip" {
  source  = "zoro16/server/hcloud"
  version = "1.0.0"

  create_primary_ip     = true
  primary_ip_name       = "some-primary-ip-rdns"
  primary_ip_datacenter = "nbg1-dc3"
  primary_ip_type       = "ipv4"
}

module "rdns" {
  source = "../../"

  create_rdns        = true
  rdns_primary_ip_id = module.p_ip.primary_ip_id
  rdns_ip_address    = module.p_ip.primary_ip_ip_address
  rdns_dns_ptr       = "example.com"
}
