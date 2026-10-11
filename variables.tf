variable "identitystore_user_lookup" {
  description = <<EOT
Map of identitystore_user_lookup, attributes below
Required:
    - identity_store_id
Optional:
    - region
    - user_id
    - alternate_identifier (block):
        - external_id (optional, block):
            - id (required)
            - issuer (required)
        - unique_attribute (optional, block):
            - attribute_path (required)
            - attribute_value (required)
EOT

  type = map(object({
    identity_store_id = string
    region            = optional(string)
    user_id           = optional(string)
    alternate_identifier = optional(object({
      external_id = optional(object({
        id     = string
        issuer = string
      }))
      unique_attribute = optional(object({
        attribute_path  = string
        attribute_value = string
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.identitystore_user_lookup : (
        (length(v.identity_store_id) >= 1 && length(v.identity_store_id) <= 64) && (can(regex("^[0-9A-Za-z-]*$", v.identity_store_id)))
      )
    ])
    error_message = "all of: must be between 1 and 64 characters; must match [0-9A-Za-z-]"
  }
  validation {
    condition = alltrue([
      for k, v in var.identitystore_user_lookup : (
        v.user_id == null || ((length(v.user_id) >= 1 && length(v.user_id) <= 47) && (can(regex("^([0-9a-f]{10}-|)[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12}$", v.user_id))))
      )
    ])
    error_message = "all of: must be between 1 and 47 characters; must match ([0-9a-f]{10}-|)[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12}"
  }
}

