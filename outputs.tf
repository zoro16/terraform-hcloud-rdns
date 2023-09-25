output "rdns_id" {
  description = "Unique ID of the Reverse DNS Entry."
  value       = try(hcloud_rdns.rdns[0].id, hcloud_rdns.rdns[*].id)
}

output "rdns_dns_ptr" {
  description = "DNS pointer for the IP address."
  value       = try(hcloud_rdns.rdns[0].dns_ptr, hcloud_rdns.rdns[*].dns_ptr)
}

output "rdns_ip_address" {
  description = "IP address."
  value       = try(hcloud_rdns.rdns[0].ip_address, hcloud_rdns.rdns[*].ip_address)
}

output "rdns_server_id" {
  description = "The server that the IP address belongs to."
  value       = try(hcloud_rdns.rdns[0].server_id, hcloud_rdns.rdns[*].server_id)
}

output "rdns_primary_ip_id" {
  description = "The Primary IP that the IP address belongs to."
  value       = try(hcloud_rdns.rdns[0].primary_ip_id, hcloud_rdns.rdns[*].primary_ip_id)
}

output "rdns_floating_ip_id" {
  description = "The Floating IP that the IP address belongs to."
  value       = try(hcloud_rdns.rdns[0].floating_ip_id, hcloud_rdns.rdns[*].floating_ip_id)
}

output "rdns_load_balancer_id" {
  description = "The Load Balancer that the IP address belongs to."
  value       = try(hcloud_rdns.rdns[0].server_id, hcloud_rdns.rdns[*].server_id)
}
