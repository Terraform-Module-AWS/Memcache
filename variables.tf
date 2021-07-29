variable "create_cluster" {
  description = "Whether a memcache cluster should be created."
  type        = bool  
  default     = true
}

variable "cluster_id" {
  description = "Group identifier. ElastiCache converts this name to lowercase. Changing this value will re-create the resource."
  type        = string
  default     = ""
}

variable "engine" {
  description = "Name of the cache engine to be used for this cache cluster. Valid values are memcached or redis."
  type        = string
  default     = null
}

variable "engine_version" {
  description = "Version number of the cache engine to be used."
  type        = string
  default     = null
}

variable "maintenance_window" {
  description = "Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period."
  type        = string
  default     = null
}

variable "node_type" {
  description = "The instance class used. Changing this value will recreate the resource"
  type        = string
  default     = null
}

variable "num_cache_nodes" {
  description = "The initial number of cache nodes that the cache cluster will have. For Memcached, this value must be between 1 and 20. If this number is reduced on subsequent runs, the highest numbered nodes will be removed."
  type        = number
  default     = null
}

variable "parameter_group_name" {
  description = "Name of the parameter group to associate with this cache cluster. Also used for creation of parameter group"
  type        = string
  default     = null
}

variable "port" {
  description = "The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211"
  type        = number
  default     = null
}

variable "subnet_group_name" {
  description = "Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource."
  type        = string
  default     = null
}

variable "security_group_ids" {
  description = "List of security group names to associate with this cache cluster. Changing this value will re-create the resource."
  type        = list
  default     = []
}

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window. Default is false."
  type        = bool
  default     = false
}

variable "notification_topic_arn" {
  description = "An Amazon Resource Name (ARN) of an SNS topic to send ElastiCache notifications to."
  type        = string
  default     = null
}

variable "az_mode" {
  description = "Specifies whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are single-az or cross-az, default is single-az."
  type        = string
  default     = "single-az"
}

variable "availability_zone" {
  description = "The Availability Zone for the cache cluster."
  type        = string
  default     = null
}

variable "preferred_availability_zones" {
  description = "A list of the Availability Zones in which cache nodes are created. The number of Availability Zones listed must equal the value of num_cache_nodes."
  type        = list
  default     = []
}

variable "tags" {
  description = "Resource tags for created Memcache cluster."
  type        = map
  default     = {}
}

variable "create_parameter_group" {
  description = "Whether to create parameter group for Memcache cluster."
  type        = bool
  default     = false
}

variable "create_elasticache_security_group" {
  description = "Whether to create elasticache security group for Memcache cluster."
  type        = bool
  default     = false
}

variable "create_elasticache_subnet_group" {
  description = "Whether to create elasticache subnet group for Memcache cluster."
  type        = bool
  default     = false
}

variable "created_parameter_group_name" {
  description = " The name of the ElastiCache parameter group to be created."
  type        = string
  default     = null
}

variable "parameter_group_family" {
  description = "The family of the ElastiCache parameter group."
  type        = string
  default     = null
}

variable "parameter_group_description" {
  description = "The description of the ElastiCache parameter group."
  type        = string
  default     = null
}

variable "parameters" {
  description = "A list of ElastiCache parameters to apply."
  default     = []
}

variable "elasticache_security_group_name" {
  description = "Name for the cache security group."
  type        = string
  default     = null
}

variable "elasticache_security_group_description" {
  description = "description for the cache security group."
  type        = string
  default     = null
}

variable "security_group_names" {
  description = "List of EC2 security group names to be authorized for ingress to the cache security group"
  type        = list
  default     = []
}

variable "elasticache_subnet_group_name" {
  description = "Name for the cache subnet group."
  type        = string
  default     = null
}

variable "elasticache_subnet_group_description" {
  description = "description for the cache subnet group."
  type        = string
  default     = null
}

variable "subnet_ids" {
  description = "List of VPC Subnet IDs for the cache subnet group."
  type        = list
  default     = []
}