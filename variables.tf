################################################
# rDNS
# https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/rdns
################################################

variable "create_rdns" {
  description = "A boolean to check whether to create a Reverse DNS or not."
  type        = bool
  default     = false
}

variable "rdns_dns_ptr" {
  description = "The DNS address the ip_address should resolve to."
  type        = string
  default     = null
}

variable "rdns_ip_address" {
  description = "The IP address that should point to dns_ptr."
  type        = string
  default     = null
}

variable "rdns_server_id" {
  description = "(Required) The server the `ip_address` belongs to. - `server_id`. Specify only one of server_id, primary_ip_id, floating_ip_id and load_balancer_id."
  type        = number
  default     = null
}

variable "rdns_primary_ip_id" {
  description = "The Primary IP the ip_address belongs to."
  type        = number
  default     = null
}

variable "rdns_floating_ip_id" {
  description = "The Floating IP the ip_address belongs to."
  type        = number
  default     = null
}

variable "rdns_load_balancer_id" {
  description = "The Load Balancer the ip_address belongs to."
  type        = number
  default     = null
}
