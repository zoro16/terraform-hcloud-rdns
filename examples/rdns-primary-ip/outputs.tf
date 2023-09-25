output "rdns_id" {
  description = "Unique ID of the Reverse DNS Entry."
  value       = module.rdns.rdns_id
}

output "rdns_dns_ptr" {
  description = "DNS pointer for the IP address."
  value       = module.rdns.rdns_dns_ptr
}

output "rdns_ip_address" {
  description = "IP address."
  value       = module.rdns.rdns_ip_address
}

output "rdns_server_id" {
  description = "The server that the IP address belongs to."
  value       = module.rdns.rdns_server_id
}

output "rdns_primary_ip_id" {
  description = "The Primary IP that the IP address belongs to."
  value       = module.rdns.rdns_primary_ip_id
}

output "rdns_floating_ip_id" {
  description = "The Floating IP that the IP address belongs to."
  value       = module.rdns.rdns_floating_ip_id
}

output "rdns_load_balancer_id" {
  description = "The Load Balancer that the IP address belongs to."
  value       = module.rdns.rdns_load_balancer_id
}
