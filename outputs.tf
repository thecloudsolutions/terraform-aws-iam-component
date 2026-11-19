output "iam_account_password_policy_expire_passwords" {
  value       = { for account_password_policy in keys(module.iam) : account_password_policy => module.iam[account_password_policy].account_password_policy_expire_passwords }
  description = "Indicates whether passwords in the account expire."
}

output "iam_role_arns" {
  value       = { for role in keys(module.iam) : role => module.iam[role].role_arn }
  description = "Amazon Resource Name (ARN) specifying the role."
}

output "iam_role_create_dates" {
  value       = { for role in keys(module.iam) : role => module.iam[role].role_create_date }
  description = "Creation date of the IAM role."
}

output "iam_role_ids" {
  value       = { for role in keys(module.iam) : role => module.iam[role].role_id }
  description = "ID of the role."
}

output "iam_role_names" {
  value       = { for role in keys(module.iam) : role => module.iam[role].role_name }
  description = "Name of the role."
}

output "iam_role_tags_all" {
  value       = { for role in keys(module.iam) : role => module.iam[role].role_tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_role_unique_ids" {
  value       = { for role in keys(module.iam) : role => module.iam[role].role_unique_id }
  description = "Stable and unique string identifying the role."
}

output "iam_policy_document_ids" {
  value       = { for policy_document in keys(module.iam) : policy_document => module.iam[policy_document].policy_document_ids }
  description = "The iam policy document id."
}

output "iam_policy_document_jsons" {
  value       = { for policy_document in keys(module.iam) : policy_document => module.iam[policy_document].policy_document_jsons }
  description = "Standard JSON policy document rendered based on the arguments above."
}

output "iam_role_policy_ids" {
  value       = { for role_policy in keys(module.iam) : role_policy => module.iam[role_policy].role_policy_ids }
  description = "The role policy ID, in the form of role_name:role_policy_name."
}

output "iam_role_policy_names" {
  value       = { for role_policy in keys(module.iam) : role_policy => module.iam[role_policy].role_policy_names }
  description = "The name of the policy."
}

output "iam_role_policy_policies" {
  value       = { for role_policy in keys(module.iam) : role_policy => module.iam[role_policy].role_policy_policies }
  description = "The policy document attached to the role."
}

output "iam_role_policy_roles" {
  value       = { for role_policy in keys(module.iam) : role_policy => module.iam[role_policy].role_policy_roles }
  description = "The name of the role associated with the policy."
}

output "iam_instance_profile_arns" {
  value       = { for instance_profile in keys(module.iam) : instance_profile => module.iam[instance_profile].instance_profile_arn }
  description = "ARN assigned by AWS to the instance profile."
}

output "iam_instance_profile_create_dates" {
  value       = { for instance_profile in keys(module.iam) : instance_profile => module.iam[instance_profile].instance_profile_create_date }
  description = "Creation timestamp of the instance profile."
}

output "iam_instance_profile_ids" {
  value       = { for instance_profile in keys(module.iam) : instance_profile => module.iam[instance_profile].instance_profile_id }
  description = "Instance profile's ID."
}

output "iam_instance_profile_tags_all" {
  value       = { for instance_profile in keys(module.iam) : instance_profile => module.iam[instance_profile].instance_profile_tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_instance_profile_unique_ids" {
  value       = { for instance_profile in keys(module.iam) : instance_profile => module.iam[instance_profile].instance_profile_unique_id }
  description = "Unique ID assigned by AWS."
}

output "iam_policy_arns" {
  value       = { for policy in keys(module.iam) : policy => module.iam[policy].policy_arns }
  description = "ARN assigned by AWS to this policy."
}

output "iam_policy_names" {
  value       = { for policy in keys(module.iam) : policy => module.iam[policy].policy_names }
  description = "ARN assigned by AWS to this policy."
}

output "iam_policy_attachment_counts" {
  value       = { for policy in keys(module.iam) : policy => module.iam[policy].policy_attachment_counts }
  description = "Number of entities (users, groups, and roles) that the policy is attached to."
}

output "iam_policy_ids" {
  value       = { for policy in keys(module.iam) : policy => module.iam[policy].policy_ids }
  description = "ARN assigned by AWS to this policy."
}

output "iam_policy_policy_ids" {
  value       = { for policy in keys(module.iam) : policy => module.iam[policy].policy_policy_ids }
  description = "Policy's ID."
}

output "iam_policy_tags_all" {
  value       = { for policy in keys(module.iam) : policy => module.iam[policy].policy_tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_user_arns" {
  value       = { for user in keys(module.iam) : user => module.iam[user].user_arns }
  description = "The ARN assigned by AWS for this user."
}

output "iam_user_ids" {
  value       = { for user in keys(module.iam) : user => module.iam[user].user_ids }
  description = "The user's name."
}

output "iam_user_names" {
  value       = { for user in keys(module.iam) : user => module.iam[user].user_names }
  description = "The user's name."
}

output "iam_user_tags_all" {
  value       = { for user in keys(module.iam) : user => module.iam[user].user_tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_user_unique_ids" {
  value       = { for user in keys(module.iam) : user => module.iam[user].user_unique_ids }
  description = "The unique ID assigned by AWS."
}

output "iam_user_policy_ids" {
  value       = { for user_policy in keys(module.iam) : user_policy => module.iam[user_policy].user_policy_ids }
  description = "The user policy ID, in the form of user_name:user_policy_name."
}

output "iam_user_policy_names" {
  value       = { for user_policy in keys(module.iam) : user_policy => module.iam[user_policy].user_policy_names }
  description = "The name of the policy."
}

output "iam_user_policy_policies" {
  value       = { for user_policy in keys(module.iam) : user_policy => module.iam[user_policy].user_policy_policies }
  description = "The policy document attached to the user."
}

output "iam_user_policy_users" {
  value       = { for user_policy in keys(module.iam) : user_policy => module.iam[user_policy].user_policy_users }
  description = "The name of the user associated with the policy."
}

output "iam_group_policy_ids" {
  value       = { for group_policy in keys(module.iam) : group_policy => module.iam[group_policy].group_policy_ids }
  description = "The group policy ID, in the form of group_name:group_policy_name."
}

output "iam_group_policy_names" {
  value       = { for group_policy in keys(module.iam) : group_policy => module.iam[group_policy].group_policy_names }
  description = "The name of the policy."
}

output "iam_group_policy_policies" {
  value       = { for group_policy in keys(module.iam) : group_policy => module.iam[group_policy].group_policy_policies }
  description = "The policy document attached to the group."
}

output "iam_group_policy_groups" {
  value       = { for group_policy in keys(module.iam) : group_policy => module.iam[group_policy].group_policy_groups }
  description = "The name of the group associated with the policy."
}

output "iam_user_login_profile_ids" {
  value       = { for user_login_profile in keys(module.iam) : user_login_profile => module.iam[user_login_profile].user_login_profile_ids }
  description = "The IAM user's name."
}

output "iam_user_login_profile_passwords" {
  value       = { for user_login_profile in keys(module.iam) : user_login_profile => module.iam[user_login_profile].user_login_profile_passwords }
  description = "The generated password, available when pgp_key is not provided."
  sensitive   = true
}

output "iam_user_login_profile_key_fingerprints" {
  value       = { for user_login_profile in keys(module.iam) : user_login_profile => module.iam[user_login_profile].user_login_profile_key_fingerprints }
  description = "The fingerprint of the PGP key used to encrypt the password."
}

output "iam_user_login_profile_encrypted_passwords" {
  value       = { for user_login_profile in keys(module.iam) : user_login_profile => module.iam[user_login_profile].user_login_profile_encrypted_passwords }
  description = "The encrypted password, base64 encoded."
}

output "iam_access_key_ids" {
  value       = { for access_key in keys(module.iam) : access_key => module.iam[access_key].access_key_ids }
  description = "The access key ID."
}

output "iam_access_key_create_dates" {
  value       = { for access_key in keys(module.iam) : access_key => module.iam[access_key].access_key_create_dates }
  description = "Date and time in RFC3339 format that the access key was created."
}

output "iam_access_key_encrypted_secrets" {
  value       = { for access_key in keys(module.iam) : access_key => module.iam[access_key].access_key_encrypted_secrets }
  description = "The encrypted secret access key, base64 encoded."
}

output "iam_access_key_encrypted_ses_smtp_passwords_v4" {
  value       = { for access_key in keys(module.iam) : access_key => module.iam[access_key].access_key_encrypted_ses_smtp_passwords_v4 }
  description = "The encrypted SES SMTP password, base64 encoded."
}

output "iam_access_key_key_fingerprints" {
  value       = { for access_key in keys(module.iam) : access_key => module.iam[access_key].access_key_key_fingerprints }
  description = "The fingerprint of the PGP key used to encrypt the secret."
}

output "iam_access_key_secrets" {
  value       = { for access_key in keys(module.iam) : access_key => module.iam[access_key].access_key_secrets }
  description = "The secret access key, available when pgp_key is not provided."
  sensitive   = true
}

output "iam_access_key_ses_smtp_passwords_v4" {
  value       = { for access_key in keys(module.iam) : access_key => module.iam[access_key].access_key_ses_smtp_passwords_v4 }
  description = "The secret access key converted into an SES SMTP password for the provider region."
  sensitive   = true
}

output "iam_access_key_statuses" {
  value       = { for access_key in keys(module.iam) : access_key => module.iam[access_key].access_key_statuses }
  description = "The status of the access key."
}

output "iam_user_ssh_key_ids" {
  value       = { for user_ssh_key in keys(module.iam) : user_ssh_key => module.iam[user_ssh_key].user_ssh_key_ids }
  description = "The unique identifier for the SSH public key."
}

output "iam_user_ssh_key_ssh_public_key_ids" {
  value       = { for user_ssh_key in keys(module.iam) : user_ssh_key => module.iam[user_ssh_key].user_ssh_key_ssh_public_key_ids }
  description = "The unique identifier for the SSH public key."
}

output "iam_user_ssh_key_fingerprints" {
  value       = { for user_ssh_key in keys(module.iam) : user_ssh_key => module.iam[user_ssh_key].user_ssh_key_fingerprints }
  description = "The MD5 message digest of the SSH public key."
}

output "iam_user_ssh_key_statuses" {
  value       = { for user_ssh_key in keys(module.iam) : user_ssh_key => module.iam[user_ssh_key].user_ssh_key_statuses }
  description = "The status of the SSH public key."
}

output "iam_group_membership_names" {
  value       = { for group_membership in keys(module.iam) : group_membership => module.iam[group_membership].group_membership_names }
  description = "The name identifying the group membership."
}

output "iam_group_membership_users" {
  value       = { for group_membership in keys(module.iam) : group_membership => module.iam[group_membership].group_membership_users }
  description = "The IAM user names associated with the group."
}

output "iam_group_membership_groups" {
  value       = { for group_membership in keys(module.iam) : group_membership => module.iam[group_membership].group_membership_groups }
  description = "The IAM group name associated with the membership."
}

output "iam_group_arns" {
  value       = { for group in keys(module.iam) : group => module.iam[group].group_arns }
  description = "The ARN assigned by AWS for this group."
}

output "iam_group_ids" {
  value       = { for group in keys(module.iam) : group => module.iam[group].group_ids }
  description = "The group's name."
}

output "iam_group_names" {
  value       = { for group in keys(module.iam) : group => module.iam[group].group_names }
  description = "The group's name."
}

output "iam_group_paths" {
  value       = { for group in keys(module.iam) : group => module.iam[group].group_paths }
  description = "The path of the group in IAM."
}

output "iam_group_unique_ids" {
  value       = { for group in keys(module.iam) : group => module.iam[group].group_unique_ids }
  description = "The unique ID assigned by AWS."
}

output "iam_openid_connect_provider_arns" {
  value       = { for openid in keys(module.iam) : openid => module.iam[openid].openid_connect_provider_arns }
  description = "The ARN assigned by AWS for this provider."
}

output "iam_openid_connect_provider_tags_all" {
  value       = { for openid in keys(module.iam) : openid => module.iam[openid].openid_connect_provider_tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_saml_provider_arns" {
  value       = { for saml_provider in keys(module.iam) : saml_provider => module.iam[saml_provider].saml_provider_arns }
  description = "The ARN assigned by AWS for this provider."
}

output "iam_saml_provider_uuids" {
  value       = { for saml_provider in keys(module.iam) : saml_provider => module.iam[saml_provider].saml_provider_uuids }
  description = "Unique identifier assigned to the SAML provider."
}

output "iam_saml_provider_tags_all" {
  value       = { for saml_provider in keys(module.iam) : saml_provider => module.iam[saml_provider].saml_provider_tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_saml_provider_valid_untils" {
  value       = { for saml_provider in keys(module.iam) : saml_provider => module.iam[saml_provider].saml_provider_valid_untils }
  description = "The expiration date and time for the SAML provider in RFC3339 format."
}

output "iam_service_linked_role_arns" {
  value       = { for service_linked_role in keys(module.iam) : service_linked_role => module.iam[service_linked_role].service_linked_role_arns }
  description = "Amazon Resource Name (ARN) specifying the role."
}

output "iam_service_linked_role_create_dates" {
  value       = { for service_linked_role in keys(module.iam) : service_linked_role => module.iam[service_linked_role].service_linked_role_create_dates }
  description = "Creation date of the IAM role."
}

output "iam_service_linked_role_ids" {
  value       = { for service_linked_role in keys(module.iam) : service_linked_role => module.iam[service_linked_role].service_linked_role_ids }
  description = "The Amazon Resource Name (ARN) of the role."
}

output "iam_service_linked_role_names" {
  value       = { for service_linked_role in keys(module.iam) : service_linked_role => module.iam[service_linked_role].service_linked_role_names }
  description = "Name of the role."
}

output "iam_service_linked_role_paths" {
  value       = { for service_linked_role in keys(module.iam) : service_linked_role => module.iam[service_linked_role].service_linked_role_paths }
  description = "Path of the role."
}

output "iam_service_linked_role_tags_all" {
  value       = { for service_linked_role in keys(module.iam) : service_linked_role => module.iam[service_linked_role].service_linked_role_tags_all }
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "iam_service_linked_role_unique_ids" {
  value       = { for service_linked_role in keys(module.iam) : service_linked_role => module.iam[service_linked_role].service_linked_role_unique_ids }
  description = "Stable and unique string identifying the role."
}
