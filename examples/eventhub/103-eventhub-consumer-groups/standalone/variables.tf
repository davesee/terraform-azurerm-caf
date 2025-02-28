variable "global_settings" {
  default = {}
}

variable "resource_groups" {
  default = null
}

variable "storage_accounts" {
  default = {}
}

variable "tags" {
  default = null
  type    = map(any)
}

variable "event_hub_namespaces" {
  default = {}
}

variable "event_hub_auth_rules" {
  default = {}
}

variable "event_hubs" {
  default = {}
}

variable "var_folder_path" {
  default = {}
}

variable "event_hub_consumer_groups" {
  default = {}
}