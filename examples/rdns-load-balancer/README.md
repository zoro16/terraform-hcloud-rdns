# rdns-load-balancer

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.42.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_lb"></a> [lb](#module\_lb) | zoro16/load-balancer/hcloud | 1.0.0 |
| <a name="module_rdns"></a> [rdns](#module\_rdns) | ../../ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hcloud_token"></a> [hcloud\_token](#input\_hcloud\_token) | Hetzner Cloud API Token | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rdns_dns_ptr"></a> [rdns\_dns\_ptr](#output\_rdns\_dns\_ptr) | DNS pointer for the IP address. |
| <a name="output_rdns_floating_ip_id"></a> [rdns\_floating\_ip\_id](#output\_rdns\_floating\_ip\_id) | The Floating IP that the IP address belongs to. |
| <a name="output_rdns_id"></a> [rdns\_id](#output\_rdns\_id) | Unique ID of the Reverse DNS Entry. |
| <a name="output_rdns_ip_address"></a> [rdns\_ip\_address](#output\_rdns\_ip\_address) | IP address. |
| <a name="output_rdns_load_balancer_id"></a> [rdns\_load\_balancer\_id](#output\_rdns\_load\_balancer\_id) | The Load Balancer that the IP address belongs to. |
| <a name="output_rdns_primary_ip_id"></a> [rdns\_primary\_ip\_id](#output\_rdns\_primary\_ip\_id) | The Primary IP that the IP address belongs to. |
| <a name="output_rdns_server_id"></a> [rdns\_server\_id](#output\_rdns\_server\_id) | The server that the IP address belongs to. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
