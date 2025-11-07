# variable "stgs" {
#  type = map(object({
#    stg_name                 = string
#    rg_name                  = string
#    location                 = string
#    account_tier             = string
#    account_replication_type = string
#    # min_tls_version                  = optional(number)
#    nfsv3_enabled                    = optional(bool, false) #false
#    cross_tenant_replication_enabled = optional(bool, true)  #true
#    access_tier                      = optional(bool, )      #hot
#    https_traffic_only_enabled       = optional(bool, true)  #true
#    allow_nested_items_to_be_public  = optional(bool, false) #false
#    shared_access_key_enabled        = optional(bool, true) #false
#    public_network_access_enabled    = optional(bool, true)  #true
#    default_to_oauth_authentication  = optional(bool, false) #false
#    is_hns_enabled                   = optional(bool, false) #false
#    large_file_share_enabled         = optional(bool, false) #false


#    network_rules = optional(map(object(
#      {
#        default_action = string
#        ip_rules       = optional(list(string))
#        bypass         = optional(list(string))
#    }
#    )))
#  }))
# }
