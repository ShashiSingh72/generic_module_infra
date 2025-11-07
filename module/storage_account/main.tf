# #simple wala arguments

# resource "azurerm_storage_account" "stg" {
#   for_each                 = var.stgs
#   name                     = each.value.stg_name                 #equired
#   resource_group_name      = each.value.rg_name                  #equired
#   location                 = each.value.location                 #equired
#   account_tier             = each.value.account_tier             #"Standard" required
#   account_replication_type = each.value.account_replication_type #"GRS"    equired
#   #   min_tls_version                  = each.value.min_tls_version                  #1.2   optional
#   nfsv3_enabled                    = lookup(each.value, "nfsv3_enabled", false)                   #false  optional
#   cross_tenant_replication_enabled = lookup(each.value, "cross_tenant_replication_enabled", true) #true  optional
#   access_tier                      = lookup(each.value, "access_tier", "Hot")                     #hot   optional
#   https_traffic_only_enabled       = lookup(each.value, "https_traffic_only_enabled", true)       #true  optional
#   allow_nested_items_to_be_public  = lookup(each.value, "allow_nested_items_to_be_public", false) #false   optional
#   shared_access_key_enabled        = lookup(each.value, "shared_access_key_enabled", true)       #true  optional
#   public_network_access_enabled    = lookup(each.value, "public_network_access_enabled", false)   #true   optional
#   default_to_oauth_authentication  = lookup(each.value, "default_to_oauth_authentication", true) #false   optional
#   is_hns_enabled                   = lookup(each.value, "is_hns_enabled", false)                   #false  optional
#   large_file_share_enabled         = lookup(each.value, "large_file_share_enabled", false)        #false   optional

#   #block wala arguments

#   dynamic "network_rules" {
#     for_each = lookup(each.value, "network_rules", {}) #tfvars me value diya to lega nhi hai to null ho jayega
#     content {
#       default_action = lookup(network_rules.value, "default_action", "Deny")
#       ip_rules       = lookup(network_rules.value, "ip_rules", []) #ip rule ki value tfvars se lega agar nahi define kiya to blank le lega [] 
#       bypass         = lookup(network_rules.value, "bypass", [])

#     }
#   }
# }


