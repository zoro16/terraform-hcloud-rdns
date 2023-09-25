################################################
# rDNS
################################################

resource "hcloud_rdns" "rdns" {
  count = var.create_rdns ? 1 : 0

  server_id        = var.rdns_server_id
  primary_ip_id    = var.rdns_primary_ip_id
  floating_ip_id   = var.rdns_floating_ip_id
  load_balancer_id = var.rdns_load_balancer_id
  ip_address       = var.rdns_ip_address
  dns_ptr          = var.rdns_dns_ptr
}
