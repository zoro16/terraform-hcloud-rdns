# Configure the Hetzner Cloud Provider
provider "hcloud" {
  token = var.hcloud_token
}


module "sv" {
  source  = "zoro16/server/hcloud"
  version = "1.0.0"

  create_server = true
  server_name   = "rdns-server"
}

module "rdns" {
  source = "../../"

  create_rdns     = true
  rdns_server_id  = module.sv.server_id
  rdns_ip_address = module.sv.server_ipv4_address
  rdns_dns_ptr    = "example.com"
}
