variable "name" {
  type        = string
  description = "Name of the storage account"
}

variable "resource_group" {
  type        = string
  description = "resource group for the storage account"
}

variable "location" {
  type        = string
  default     = "westeurope" 
  description = "Location assigned to the storage account"
}

variable "tier" {
  type        = string
  default     = "Standard"  
  description = "Tier for the storage account"
}

variable "replication_type" {
  type        = string
  default     = "LRS" 
  description = "Replication type set for the storage account"
}

variable "soft_delete_retention_days" {
  type        = number
  default     = null
  description = "Amount of days to to be set for soft delete retention"
}

variable "containers" {
  type        = list(object({
    name        = string
    access_type = string
  }))
  default     = [] 
  description = "Containers for the storage account"
}

variable "tables" {
  type        = list(string)
  default     = [] 
  description = "Tables for the storage account"
}