variable "key_pair_tier" {
  description = "Key Pair Tier"
  type = string
}


variable "web_servers_key_management_tags" {
  description = "Web Servers Default Tags"
  type = map(string)
  default = {
    "Type" = "key"
    "Tier" = "web"
    "PublicKey" = "web-servers-key.pub"
    "Name" = "web-servers"
  }
}

variable "app_servers_key_management_tags" {
  description = "App Servers Default Tags"
  type = map(string)
  default = {
    "Type" = "key"
    "Tier" = "app"
    "PublicKey" = "app-servers-key.pub"
    "Name" = "app-servers"
  }
}


locals {
  all_available = {
    "Web" = var.web_servers_key_management_tags
    "App" = var.app_servers_key_management_tags
  }
}

