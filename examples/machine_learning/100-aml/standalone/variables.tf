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

variable "azurerm_application_insights" {
  default = {}
}

variable "storage_accounts" {
  default = {}
}

variable "keyvaults" {
  default = {}
}

variable "machine_learning_workspaces" {
  default = {}
}

variable "var_folder_path" {
  default = {}
}


