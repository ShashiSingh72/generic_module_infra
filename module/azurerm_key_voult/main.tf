resource "azurerm_key_vault" "kv" {
  for_each                        = var.kvs
  name                            = each.value.name
  location                        = each.value.location
  resource_group_name             = each.value.resource_group_name
  tenant_id                       = each.value.tenant_id
  sku_name                        = each.value.sku_name #"standard"
  enabled_for_disk_encryption     = lookup(each.value, "enabled_for_disk_encryption", false)
  soft_delete_retention_days      = lookup(each.value, "soft_delete_retention_days", "7") #7
  purge_protection_enabled        = lookup(each.value, "purge_protection_enabled", false) #false
  enabled_for_deployment          = lookup(each.value, "enabled_for_deployment", true)
  enabled_for_template_deployment = lookup(each.value, "enabled_for_template_deployment", false)


#   dynamic "network_acls" {
#     for_each = lookup(each.value , "network_acls" , [])
#     content {
#       bypass                     = network_acls.value.bypass
#       default_action             = network_acls.value.default_action
#     #   ip_rules                   = lookup(network_acls.value, "ip_rules", [])
#     }
#   }

dynamic "access_policy" {
  for_each = lookup(each.value, "access_policy", [])

  content {
    tenant_id = access_policy.value.tenant_id
    object_id = access_policy.value.object_id

    key_permissions         = lookup(access_policy.value, "key_permissions", [])
    secret_permissions      = lookup(access_policy.value, "secret_permissions", [])
    storage_permissions     = lookup(access_policy.value, "storage_permissions", [])
    certificate_permissions = lookup(access_policy.value, "certificate_permissions", [])
  }
}

}

