output "cache_nodes" {
  description = "List of node objects including id, address, port and availability_zone."
  value       = element(concat(aws_elasticache_cluster.this.*.cache_nodes, [""]), 0)
}

output "configuration_endpoint" {
  description = "The configuration endpoint to allow host discovery. Only available for memcached."
  value       = var.engine == "memcached" ? element(concat(aws_elasticache_cluster.this.*.configuration_endpoint, [""]), 0) : ""
}

output "cluster_address" {
  description = "The DNS name of the cache cluster without the port appended. Only available for memcached"
  value       = var.engine == "memcached" ? element(concat(aws_elasticache_cluster.this.*.cluster_address, [""]), 0) : ""
}

output "cluster_arn" {
  description = "The ARN of the created ElastiCache Cluster."
  value       = element(concat(aws_elasticache_cluster.this.*.arn, [""]), 0)
}

output "subnet_group_name" {
  description = "The name of the created ElastiCache Subnet Group."
  value       = element(concat(aws_elasticache_subnet_group.this.*.name, [""]), 0)
}