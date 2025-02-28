variable "global_settings" {
  default = {}
}

variable "resource_groups" {
  default = null
}

variable "tags" {
  default = null
  type    = map(any)
}

variable "keyvaults" {
  default = {}
}

variable "azuread_apps" {
  default = {}
}

variable "azuread_users" {
  default = {}
}

variable "azuread_roles" {
  default = {}
}

variable "keyvault_access_policies" {
  default = {}
}

variable "keyvault_access_policies_azuread_apps" {
  default = {}
}

variable "role_mapping" {
  default = {}
}

variable "var_folder_path" {
  default = {}
}

