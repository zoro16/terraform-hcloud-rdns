# terraform-hcloud-rdns

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.42.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | >= 1.42.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_rdns.rdns](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/rdns) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_rdns"></a> [create\_rdns](#input\_create\_rdns) | A boolean to check whether to create a Reverse DNS or not. | `bool` | `false` | no |
| <a name="input_rdns_dns_ptr"></a> [rdns\_dns\_ptr](#input\_rdns\_dns\_ptr) | The DNS address the ip\_address should resolve to. | `string` | `null` | no |
| <a name="input_rdns_floating_ip_id"></a> [rdns\_floating\_ip\_id](#input\_rdns\_floating\_ip\_id) | The Floating IP the ip\_address belongs to. | `number` | `null` | no |
| <a name="input_rdns_ip_address"></a> [rdns\_ip\_address](#input\_rdns\_ip\_address) | The IP address that should point to dns\_ptr. | `string` | `null` | no |
| <a name="input_rdns_load_balancer_id"></a> [rdns\_load\_balancer\_id](#input\_rdns\_load\_balancer\_id) | The Load Balancer the ip\_address belongs to. | `number` | `null` | no |
| <a name="input_rdns_primary_ip_id"></a> [rdns\_primary\_ip\_id](#input\_rdns\_primary\_ip\_id) | The Primary IP the ip\_address belongs to. | `number` | `null` | no |
| <a name="input_rdns_server_id"></a> [rdns\_server\_id](#input\_rdns\_server\_id) | (Required) The server the `ip_address` belongs to. - `server_id`. Specify only one of server\_id, primary\_ip\_id, floating\_ip\_id and load\_balancer\_id. | `number` | `null` | no |

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
