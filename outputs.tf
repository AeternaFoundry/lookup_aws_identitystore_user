output "identitystore_user_lookup_id" {
  description = "Map of id values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identitystore_user_lookup_addresses" {
  description = "Map of addresses values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.addresses if v.addresses != null && length(v.addresses) > 0 }
}
output "identitystore_user_lookup_alternate_identifier" {
  description = "Map of alternate_identifier values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => one(v.alternate_identifier) if v.alternate_identifier != null && length(v.alternate_identifier) > 0 }
}
output "identitystore_user_lookup_display_name" {
  description = "Map of display_name values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "identitystore_user_lookup_emails" {
  description = "Map of emails values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.emails if v.emails != null && length(v.emails) > 0 }
}
output "identitystore_user_lookup_external_ids" {
  description = "Map of external_ids values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.external_ids if v.external_ids != null && length(v.external_ids) > 0 }
}
output "identitystore_user_lookup_identity_store_id" {
  description = "Map of identity_store_id values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.identity_store_id if v.identity_store_id != null && length(v.identity_store_id) > 0 }
}
output "identitystore_user_lookup_locale" {
  description = "Map of locale values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.locale if v.locale != null && length(v.locale) > 0 }
}
output "identitystore_user_lookup_name" {
  description = "Map of name values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "identitystore_user_lookup_nickname" {
  description = "Map of nickname values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.nickname if v.nickname != null && length(v.nickname) > 0 }
}
output "identitystore_user_lookup_phone_numbers" {
  description = "Map of phone_numbers values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.phone_numbers if v.phone_numbers != null && length(v.phone_numbers) > 0 }
}
output "identitystore_user_lookup_preferred_language" {
  description = "Map of preferred_language values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.preferred_language if v.preferred_language != null && length(v.preferred_language) > 0 }
}
output "identitystore_user_lookup_profile_url" {
  description = "Map of profile_url values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.profile_url if v.profile_url != null && length(v.profile_url) > 0 }
}
output "identitystore_user_lookup_region" {
  description = "Map of region values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "identitystore_user_lookup_timezone" {
  description = "Map of timezone values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.timezone if v.timezone != null && length(v.timezone) > 0 }
}
output "identitystore_user_lookup_title" {
  description = "Map of title values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.title if v.title != null && length(v.title) > 0 }
}
output "identitystore_user_lookup_user_id" {
  description = "Map of user_id values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}
output "identitystore_user_lookup_user_name" {
  description = "Map of user_name values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}
output "identitystore_user_lookup_user_status" {
  description = "Map of user_status values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.user_status if v.user_status != null && length(v.user_status) > 0 }
}
output "identitystore_user_lookup_user_type" {
  description = "Map of user_type values across all identitystore_user_lookup, keyed the same as var.identitystore_user_lookup"
  value       = { for k, v in data.aws_identitystore_user.identitystore_user_lookup : k => v.user_type if v.user_type != null && length(v.user_type) > 0 }
}

