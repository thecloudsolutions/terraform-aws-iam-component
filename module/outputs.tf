output "account_password_policy_expire_passwords" {
  value       = var.account_password_policy != null ? module.account_password_policy[0].expire_passwords : null
  description = "Indicates whether passwords in the account expire."
}

output "role_arn" {
  value       = var.role != null ? module.role[0].arn : null
  description = "Amazon Resource Name (ARN) specifying the role."
}

output "role_create_date" {
  value       = var.role != null ? module.role[0].create_date : null
  description = "Creation date of the IAM role."
}

output "role_id" {
  value       = var.role != null ? module.role[0].id : null
  description = "ID of the role."
}

output "role_name" {
  value       = var.role != null ? module.role[0].name : null
  description = "Name of the role."
}

output "role_tags_all" {
  value       = var.role != null ? module.role[0].tags_all : null
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "role_unique_id" {
  value       = var.role != null ? module.role[0].unique_id : null
  description = "Stable and unique string identifying the role."
}

output "policy_document_ids" {
  value       = { for policy_document in keys(module.policy_document) : policy_document => module.policy_document[policy_document].id }
  description = "The iam policy document id."
}

output "policy_document_jsons" {
  value       = { for policy_document in keys(module.policy_document) : policy_document => module.policy_document[policy_document].json }
  description = "Standard JSON policy document rendered based on the arguments above."
}

output "role_policy_ids" {
  value       = { for role_policy in keys(module.role_policy) : role_policy => module.role_policy[role_policy].id }
  description = "The role policy ID, in the form of role_name:role_policy_name."
}

output "role_policy_names" {
  value       = { for role_policy in keys(module.role_policy) : role_policy => module.role_policy[role_policy].name }
  description = "The name of the policy."
}

output "role_policy_policies" {
  value       = { for role_policy in keys(module.role_policy) : role_policy => module.role_policy[role_policy].policy }
  description = "The policy document attached to the role."
}

output "role_policy_roles" {
  value       = { for role_policy in keys(module.role_policy) : role_policy => module.role_policy[role_policy].role }
  description = "The name of the role associated with the policy."
}

output "instance_profile_arn" {
  value       = var.instance_profile != null ? module.instance_profile[0].arn : null
  description = "ARN assigned by AWS to the instance profile."
}

output "instance_profile_create_date" {
  value       = var.instance_profile != null ? module.instance_profile[0].create_date : null
  description = "Creation timestamp of the instance profile."
}

output "instance_profile_id" {
  value       = var.instance_profile != null ? module.instance_profile[0].id : null
  description = "Instance profile's ID."
}

output "instance_profile_tags_all" {
  value       = var.instance_profile != null ? module.instance_profile[0].tags_all : null
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "instance_profile_unique_id" {
  value       = var.instance_profile != null ? module.instance_profile[0].unique_id : null
  description = "Unique ID assigned by AWS."
}

output "policy_arns" {
  value       = { for policy in keys(module.policy) : policy => module.policy[policy].arn }
  description = "ARN assigned by AWS to this policy."
}

output "policy_names" {
  value       = { for policy in keys(module.policy) : policy => module.policy[policy].name }
  description = "ARN assigned by AWS to this policy."
}

output "policy_attachment_counts" {
  value       = { for policy in keys(module.policy) : policy => module.policy[policy].attachment_count }
  description = "Number of entities (users, groups, and roles) that the policy is attached to."
}

output "policy_ids" {
  value       = { for policy in keys(module.policy) : policy => module.policy[policy].id }
  description = "ARN assigned by AWS to this policy."
}

output "policy_policy_ids" {
  value       = { for policy in keys(module.policy) : policy => module.policy[policy].policy_id }
  description = "Policy's ID."
}

output "policy_tags_all" {
  value       = { for policy in keys(module.policy) : policy => module.policy[policy].tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "user_arns" {
  value       = { for user in keys(module.user) : user => module.user[user].arn }
  description = "The ARN assigned by AWS for this user."
}

output "user_ids" {
  value       = { for user in keys(module.user) : user => module.user[user].id }
  description = "The user's name."
}

output "user_names" {
  value       = { for user in keys(module.user) : user => module.user[user].name }
  description = "The user's name."
}

output "user_tags_all" {
  value       = { for user in keys(module.user) : user => module.user[user].tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "user_unique_ids" {
  value       = { for user in keys(module.user) : user => module.user[user].unique_id }
  description = "The unique ID assigned by AWS."
}

output "user_policy_ids" {
  value       = { for user_policy in keys(module.user_policy) : user_policy => module.user_policy[user_policy].id }
  description = "The user policy ID, in the form of user_name:user_policy_name."
}

output "user_policy_names" {
  value       = { for user_policy in keys(module.user_policy) : user_policy => module.user_policy[user_policy].name }
  description = "The name of the policy."
}

output "user_policy_policies" {
  value       = { for user_policy in keys(module.user_policy) : user_policy => module.user_policy[user_policy].policy }
  description = "The policy document attached to the user."
}

output "user_policy_users" {
  value       = { for user_policy in keys(module.user_policy) : user_policy => module.user_policy[user_policy].user }
  description = "The name of the user associated with the policy."
}

output "group_policy_ids" {
  value       = { for group_policy in keys(module.group_policy) : group_policy => module.group_policy[group_policy].id }
  description = "The group policy ID, in the form of group_name:group_policy_name."
}

output "group_policy_names" {
  value       = { for group_policy in keys(module.group_policy) : group_policy => module.group_policy[group_policy].name }
  description = "The name of the policy."
}

output "group_policy_policies" {
  value       = { for group_policy in keys(module.group_policy) : group_policy => module.group_policy[group_policy].policy }
  description = "The policy document attached to the group."
}

output "group_policy_groups" {
  value       = { for group_policy in keys(module.group_policy) : group_policy => module.group_policy[group_policy].group }
  description = "The name of the group associated with the policy."
}

output "user_login_profile_ids" {
  value       = { for user_login_profile in keys(module.user_login_profile) : user_login_profile => module.user_login_profile[user_login_profile].id }
  description = "The IAM user's name."
}

output "user_login_profile_passwords" {
  value       = { for user_login_profile in keys(module.user_login_profile) : user_login_profile => module.user_login_profile[user_login_profile].password }
  description = "The generated password, available when pgp_key is not provided."
  sensitive   = true
}

output "user_login_profile_key_fingerprints" {
  value       = { for user_login_profile in keys(module.user_login_profile) : user_login_profile => module.user_login_profile[user_login_profile].key_fingerprint }
  description = "The fingerprint of the PGP key used to encrypt the password."
}

output "user_login_profile_encrypted_passwords" {
  value       = { for user_login_profile in keys(module.user_login_profile) : user_login_profile => module.user_login_profile[user_login_profile].encrypted_password }
  description = "The encrypted password, base64 encoded."
}

output "access_key_ids" {
  value       = { for access_key in keys(module.access_key) : access_key => module.access_key[access_key].id }
  description = "The access key ID."
}

output "access_key_create_dates" {
  value       = { for access_key in keys(module.access_key) : access_key => module.access_key[access_key].create_date }
  description = "Date and time in RFC3339 format that the access key was created."
}

output "access_key_encrypted_secrets" {
  value       = { for access_key in keys(module.access_key) : access_key => module.access_key[access_key].encrypted_secret }
  description = "The encrypted secret access key, base64 encoded."
}

output "access_key_encrypted_ses_smtp_passwords_v4" {
  value       = { for access_key in keys(module.access_key) : access_key => module.access_key[access_key].encrypted_ses_smtp_password_v4 }
  description = "The encrypted SES SMTP password, base64 encoded."
}

output "access_key_key_fingerprints" {
  value       = { for access_key in keys(module.access_key) : access_key => module.access_key[access_key].key_fingerprint }
  description = "The fingerprint of the PGP key used to encrypt the secret."
}

output "access_key_secrets" {
  value       = { for access_key in keys(module.access_key) : access_key => module.access_key[access_key].secret }
  description = "The secret access key, available when pgp_key is not provided."
  sensitive   = true
}

output "access_key_ses_smtp_passwords_v4" {
  value       = { for access_key in keys(module.access_key) : access_key => module.access_key[access_key].ses_smtp_password_v4 }
  description = "The secret access key converted into an SES SMTP password for the provider region."
  sensitive   = true
}

output "access_key_statuses" {
  value       = { for access_key in keys(module.access_key) : access_key => module.access_key[access_key].status }
  description = "The status of the access key."
}

output "user_ssh_key_ids" {
  value       = { for user_ssh_key in keys(module.user_ssh_key) : user_ssh_key => module.user_ssh_key[user_ssh_key].id }
  description = "The unique identifier for the SSH public key."
}

output "user_ssh_key_ssh_public_key_ids" {
  value       = { for user_ssh_key in keys(module.user_ssh_key) : user_ssh_key => module.user_ssh_key[user_ssh_key].ssh_public_key_id }
  description = "The unique identifier for the SSH public key."
}

output "user_ssh_key_fingerprints" {
  value       = { for user_ssh_key in keys(module.user_ssh_key) : user_ssh_key => module.user_ssh_key[user_ssh_key].fingerprint }
  description = "The MD5 message digest of the SSH public key."
}

output "user_ssh_key_statuses" {
  value       = { for user_ssh_key in keys(module.user_ssh_key) : user_ssh_key => module.user_ssh_key[user_ssh_key].status }
  description = "The status of the SSH public key."
}

output "group_arns" {
  value       = { for group in keys(module.group) : group => module.group[group].arn }
  description = "The ARN assigned by AWS for this group."
}

output "group_ids" {
  value       = { for group in keys(module.group) : group => module.group[group].id }
  description = "The group's name."
}

output "group_names" {
  value       = { for group in keys(module.group) : group => module.group[group].name }
  description = "The group's name."
}

output "group_paths" {
  value       = { for group in keys(module.group) : group => module.group[group].path }
  description = "The path of the group in IAM."
}

output "group_unique_ids" {
  value       = { for group in keys(module.group) : group => module.group[group].unique_id }
  description = "The unique ID assigned by AWS."
}

output "group_membership_names" {
  value       = { for group_membership in keys(module.group_membership) : group_membership => module.group_membership[group_membership].name }
  description = "The name identifying the group membership."
}

output "group_membership_users" {
  value       = { for group_membership in keys(module.group_membership) : group_membership => module.group_membership[group_membership].users }
  description = "The IAM user names associated with the group."
}

output "group_membership_groups" {
  value       = { for group_membership in keys(module.group_membership) : group_membership => module.group_membership[group_membership].group }
  description = "The IAM group name associated with the membership."
}

output "openid_connect_provider_arns" {
  value       = { for openid in keys(module.openid_connect_provider) : openid => module.openid_connect_provider[openid].arn }
  description = "The ARN assigned by AWS for this provider."
}

output "openid_connect_provider_tags_all" {
  value       = { for openid in keys(module.openid_connect_provider) : openid => module.openid_connect_provider[openid].tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "saml_provider_arns" {
  value       = { for saml_provider in keys(module.saml_provider) : saml_provider => module.saml_provider[saml_provider].arn }
  description = "The ARN assigned by AWS for this provider."
}

output "saml_provider_uuids" {
  value       = { for saml_provider in keys(module.saml_provider) : saml_provider => module.saml_provider[saml_provider].saml_provider_uuid }
  description = "Unique identifier assigned to the SAML provider."
}

output "saml_provider_tags_all" {
  value       = { for saml_provider in keys(module.saml_provider) : saml_provider => module.saml_provider[saml_provider].tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "saml_provider_valid_untils" {
  value       = { for saml_provider in keys(module.saml_provider) : saml_provider => module.saml_provider[saml_provider].valid_until }
  description = "The expiration date and time for the SAML provider in RFC3339 format."
}

output "service_linked_role_arns" {
  value       = { for service_linked_role in keys(module.service_linked_role) : service_linked_role => module.service_linked_role[service_linked_role].arn }
  description = "Amazon Resource Name (ARN) specifying the role."
}

output "service_linked_role_create_dates" {
  value       = { for service_linked_role in keys(module.service_linked_role) : service_linked_role => module.service_linked_role[service_linked_role].create_date }
  description = "Creation date of the IAM role."
}

output "service_linked_role_ids" {
  value       = { for service_linked_role in keys(module.service_linked_role) : service_linked_role => module.service_linked_role[service_linked_role].id }
  description = "The Amazon Resource Name (ARN) of the role."
}

output "service_linked_role_names" {
  value       = { for service_linked_role in keys(module.service_linked_role) : service_linked_role => module.service_linked_role[service_linked_role].name }
  description = "Name of the role."
}

output "service_linked_role_paths" {
  value       = { for service_linked_role in keys(module.service_linked_role) : service_linked_role => module.service_linked_role[service_linked_role].path }
  description = "Path of the role."
}

output "service_linked_role_tags_all" {
  value       = { for service_linked_role in keys(module.service_linked_role) : service_linked_role => module.service_linked_role[service_linked_role].tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "service_linked_role_unique_ids" {
  value       = { for service_linked_role in keys(module.service_linked_role) : service_linked_role => module.service_linked_role[service_linked_role].unique_id }
  description = "Stable and unique string identifying the role."
}
