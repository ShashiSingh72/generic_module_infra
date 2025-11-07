variable "kvs" {
  type = map(object({
    name                        = string
    location                    = string
    resource_group_name         = string
    enabled_for_disk_encryption = optional(bool, false)
    tenant_id                   = string
    soft_delete_retention_days  = optional(number, 7)
    purge_protection_enabled    = optional(bool, false)
    sku_name                    = optional(string, "standard")
    # network_acls = optional(object({
    #   bypass                     = string
    #   default_action             = string
    #   ip_rules                   = optional(list(string))
    #   virtual_network_subnet_ids = optional(list(string))
    # }))

    access_policies = optional(list(object({
      tenant_id           = string
      object_id           = string
      application_id      = optional(string)
      key_permissions     = optional(list(string))
      secret_permissions  = optional(list(string))
      storage_permissions = optional(list(string))
    })))
  }))
}
