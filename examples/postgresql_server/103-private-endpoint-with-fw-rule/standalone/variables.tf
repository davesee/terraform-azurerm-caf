variable "global_settings" {
  default = {}
}

variable "resource_groups" {
  default = null
}

variable "storage_accounts" {
  default = {}
}

variable "keyvaults" {
  default = {}
}

variable "postgresql_servers" {
  default = {}
}

variable "vnets" {
  default = {}
}

variable "tags" {
  default = null
  type    = map(any)
}

variable "azuread_groups" {
  default = {}
}

variable "var_folder_path" {
  default = {}
}