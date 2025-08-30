variable "region" {
  type        = string
  description = "AWS region to deploy DocumentDB"
}

variable "name" {
  type        = string
  description = "Name of the DocumentDB cluster"
}

variable "master_username" {
  type        = string
  description = "Master username for DocumentDB"
}

variable "master_password" {
  type        = string
  description = "Master password for DocumentDB"
  sensitive   = true
}

variable "engine_version" {
  type        = string
  description = "Engine version for DocumentDB cluster"
  default     = "4.0.0" # or 5.0.0 depending on what you want
}
variable "engine" {
  type        = string
  description = "Engine type for DocumentDB cluster"
  default     = "docdb"
}
variable "family" {
  type        = string
  description = "Parameter group family"
}

variable "parameters" {
  type    = map(string)
  default = {}
}

variable "cluster_instance_class" {
  type        = string
  description = "Instance class for DocumentDB cluster instances"
}

variable "cluster_instance_count" {
  type    = number
  default = 1
}

variable "group_subnets" {
  type        = list(string)
  description = "List of subnet IDs for the subnet group"
}

variable "cluster_security_group" {
  type        = list(string)
  description = "List of security group IDs for the DocumentDB cluster"
}

variable "apply_immediately" {
  type    = bool
  default = true
}

variable "backup_retention_period" {
  type    = number
  default = 7
}

variable "preferred_backup_window" {
  type    = string
  default = "02:00-03:00"
}

variable "skip_final_snapshot" {
  type    = bool
  default = true
}

variable "storage_encrypted" {
  type    = bool
  default = true
}

variable "ca_cert_identifier" {
  type    = string
  default = "rds-ca-rsa2048-g1"
}
