resource "aws_elasticache_cluster" "this" {
  count = var.create_cluster ? 1 : 0
  cluster_id           = var.cluster_id
  engine               = var.engine
  engine_version       = var.engine_version
  maintenance_window   = var.maintenance_window
  node_type            = var.node_type
  num_cache_nodes      = var.num_cache_nodes
  parameter_group_name = var.parameter_group_name
  port                 = var.port
  subnet_group_name    = var.subnet_group_name
  security_group_ids   = var.security_group_ids
  apply_immediately    = var.apply_immediately
  notification_topic_arn = var.notification_topic_arn
  az_mode              = var.az_mode
  availability_zone    = var.availability_zone
  preferred_availability_zones = var.preferred_availability_zones
  tags                 = var.tags
}

resource  "aws_elasticache_parameter_group" "this" {
  count = var.create_parameter_group ? 1 : 0
  name = var.parameter_group_name
  family = var.parameter_group_family
  description = var.parameter_group_description
  dynamic "parameter" {
      for_each = var.parameters
      iterator = p

      content {
          name = p.name
          value = p.value
      }
  }
}

resource "aws_elasticache_security_group" "this" {
  count                 = var.create_elasticache_security_group ? 1 : 0
  name                  = var.elasticache_security_group_name
  description           = var.elasticache_subnet_group_description
  security_group_names  = var.security_group_names
}

resource "aws_elasticache_subnet_group" "this" {
  count         = var.create_elasticache_subnet_group ? 1 : 0
  name          = var.elasticache_subnet_group_name
  description   = var.elasticache_subnet_group_description
  subnet_ids    = var.subnet_ids
  tags 		      = var.tags
}