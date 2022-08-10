variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The region for the resource group"
  type        = string
}

variable "lock_level" {
  description = "The lock level for the resource group"
  type        = string
}

variable "tags" {
  description = "The tags for the resource group"
  type        = map(any)
  default     = {}
}