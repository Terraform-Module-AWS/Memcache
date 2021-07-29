# Terraform Module for AWS Memcache

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.65 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 2.65 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_elasticache_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_cluster) | resource |
| [aws_elasticache_parameter_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_parameter_group) | resource |
| [aws_elasticache_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_security_group) | resource |
| [aws_elasticache_subnet_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_subnet_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is false. | `bool` | `false` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The Availability Zone for the cache cluster. | `string` | `null` | no |
| <a name="input_az_mode"></a> [az\_mode](#input\_az\_mode) | Specifies whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are single-az or cross-az, default is single-az. | `string` | `"single-az"` | no |
| <a name="input_cluster_id"></a> [cluster\_id](#input\_cluster\_id) | Group identifier. ElastiCache converts this name to lowercase. Changing this value will re-create the resource. | `string` | `""` | no |
| <a name="input_create_cluster"></a> [create\_cluster](#input\_create\_cluster) | Whether a memcache cluster should be created. | `bool` | `true` | no |
| <a name="input_create_elasticache_security_group"></a> [create\_elasticache\_security\_group](#input\_create\_elasticache\_security\_group) | Whether to create elasticache security group for Memcache cluster. | `bool` | `false` | no |
| <a name="input_create_elasticache_subnet_group"></a> [create\_elasticache\_subnet\_group](#input\_create\_elasticache\_subnet\_group) | Whether to create elasticache subnet group for Memcache cluster. | `bool` | `false` | no |
| <a name="input_create_parameter_group"></a> [create\_parameter\_group](#input\_create\_parameter\_group) | Whether to create parameter group for Memcache cluster. | `bool` | `false` | no |
| <a name="input_created_parameter_group_name"></a> [created\_parameter\_group\_name](#input\_created\_parameter\_group\_name) | The name of the ElastiCache parameter group to be created. | `string` | `null` | no |
| <a name="input_elasticache_security_group_description"></a> [elasticache\_security\_group\_description](#input\_elasticache\_security\_group\_description) | description for the cache security group. | `string` | `null` | no |
| <a name="input_elasticache_security_group_name"></a> [elasticache\_security\_group\_name](#input\_elasticache\_security\_group\_name) | Name for the cache security group. | `string` | `null` | no |
| <a name="input_elasticache_subnet_group_description"></a> [elasticache\_subnet\_group\_description](#input\_elasticache\_subnet\_group\_description) | description for the cache subnet group. | `string` | `null` | no |
| <a name="input_elasticache_subnet_group_name"></a> [elasticache\_subnet\_group\_name](#input\_elasticache\_subnet\_group\_name) | Name for the cache subnet group. | `string` | `null` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | Name of the cache engine to be used for this cache cluster. Valid values are memcached or redis. | `string` | `null` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | Version number of the cache engine to be used. | `string` | `null` | no |
| <a name="input_maintenance_window"></a> [maintenance\_window](#input\_maintenance\_window) | Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. | `string` | `null` | no |
| <a name="input_node_type"></a> [node\_type](#input\_node\_type) | The instance class used. Changing this value will recreate the resource | `string` | `null` | no |
| <a name="input_notification_topic_arn"></a> [notification\_topic\_arn](#input\_notification\_topic\_arn) | An Amazon Resource Name (ARN) of an SNS topic to send ElastiCache notifications to. | `string` | `null` | no |
| <a name="input_num_cache_nodes"></a> [num\_cache\_nodes](#input\_num\_cache\_nodes) | The initial number of cache nodes that the cache cluster will have. For Memcached, this value must be between 1 and 20. If this number is reduced on subsequent runs, the highest numbered nodes will be removed. | `number` | `null` | no |
| <a name="input_parameter_group_description"></a> [parameter\_group\_description](#input\_parameter\_group\_description) | The description of the ElastiCache parameter group. | `string` | `null` | no |
| <a name="input_parameter_group_family"></a> [parameter\_group\_family](#input\_parameter\_group\_family) | The family of the ElastiCache parameter group. | `string` | `null` | no |
| <a name="input_parameter_group_name"></a> [parameter\_group\_name](#input\_parameter\_group\_name) | Name of the parameter group to associate with this cache cluster. Also used for creation of parameter group | `string` | `null` | no |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | A list of ElastiCache parameters to apply. | `list` | `[]` | no |
| <a name="input_port"></a> [port](#input\_port) | The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211 | `number` | `null` | no |
| <a name="input_preferred_availability_zones"></a> [preferred\_availability\_zones](#input\_preferred\_availability\_zones) | A list of the Availability Zones in which cache nodes are created. The number of Availability Zones listed must equal the value of num\_cache\_nodes. | `list` | `[]` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | List of security group names to associate with this cache cluster. Changing this value will re-create the resource. | `list` | `[]` | no |
| <a name="input_security_group_names"></a> [security\_group\_names](#input\_security\_group\_names) | List of EC2 security group names to be authorized for ingress to the cache security group | `list` | `[]` | no |
| <a name="input_subnet_group_name"></a> [subnet\_group\_name](#input\_subnet\_group\_name) | Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource. | `string` | `null` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | List of VPC Subnet IDs for the cache subnet group. | `list` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Resource tags for created Memcache cluster. | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cache_nodes"></a> [cache\_nodes](#output\_cache\_nodes) | List of node objects including id, address, port and availability\_zone. |
| <a name="output_cluster_address"></a> [cluster\_address](#output\_cluster\_address) | The DNS name of the cache cluster without the port appended. Only available for memcached |
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | The ARN of the created ElastiCache Cluster. |
| <a name="output_configuration_endpoint"></a> [configuration\_endpoint](#output\_configuration\_endpoint) | The configuration endpoint to allow host discovery. Only available for memcached. |
| <a name="output_subnet_group_name"></a> [subnet\_group\_name](#output\_subnet\_group\_name) | The name of the created ElastiCache Subnet Group. |

### Changelog

* [Memcache.0.0.1] Initial Memcache commit

