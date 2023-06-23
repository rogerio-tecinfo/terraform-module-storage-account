variable "resourcegroup" {
  type        = string
  description = "Resource Group used for all resources."
  default     = "RG01"
}

variable "storage_account_type" {
  type        = string
  description = "Virtual Machine Disk type, Default: Standard_LRS"
  default     = "Standard_LRS"
}

variable "storage_accountname" {
  type        = string
  description = "Description the storage account name"
  default     = "az10407rg1rsp1906202210h"
}

variable "storage_container" {
  type        = string
  description = "Description the storage account name"
  default     = "az104-07-container"
}