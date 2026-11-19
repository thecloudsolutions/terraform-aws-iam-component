module "account_alias" {
  source = "../resources/account_alias"

  count = var.account_alias != null ? 1 : 0

  account_alias = var.account_alias.account_alias
}

module "account_password_policy" {
  source = "../resources/account_password_policy"

  count = var.account_password_policy != null ? 1 : 0

  allow_users_to_change_password = lookup(var.account_password_policy, "allow_users_to_change_password", null)
  hard_expiry                    = lookup(var.account_password_policy, "hard_expiry", null)
  max_password_age               = lookup(var.account_password_policy, "max_password_age", null)
  minimum_password_length        = lookup(var.account_password_policy, "minimum_password_length", null)
  password_reuse_prevention      = lookup(var.account_password_policy, "password_reuse_prevention", null)
  require_lowercase_characters   = lookup(var.account_password_policy, "require_lowercase_characters", null)
  require_numbers                = lookup(var.account_password_policy, "require_numbers", null)
  require_symbols                = lookup(var.account_password_policy, "require_symbols", null)
  require_uppercase_characters   = lookup(var.account_password_policy, "require_uppercase_characters", null)
}

module "role" {
  source = "../resources/role"

  count = var.role != null ? 1 : 0

  assume_role_policy    = try(var.role.assume_role_policy, null) != null ? var.role.assume_role_policy : module.policy_document[var.role.assume_role_policy_document_custom_name].json
  description           = lookup(var.role, "description", null)
  force_detach_policies = lookup(var.role, "force_detach_policies", null)
  inline_policy         = lookup(var.role, "inline_policy", null)
  managed_policy_arns   = lookup(var.role, "managed_policy_arns", null)
  max_session_duration  = lookup(var.role, "max_session_duration", null)
  name                  = lookup(var.role, "name", null)
  name_prefix           = lookup(var.role, "name_prefix", null)
  path                  = lookup(var.role, "path", null)
  permissions_boundary  = try(var.role.permissions_boundary, null) != null ? var.role.permissions_boundary : try(var.role.permissions_boundary_custom_name, null) != null ? module.policy[var.role.permissions_boundary_custom_name].arn : null

  tags = lookup(var.role, "tags", null)
}

module "policy_document" {
  source = "../resources/policy_document"

  for_each = var.policy_documents

  override_policy_documents = lookup(each.value, "override_policy_documents", null)
  policy_id                 = lookup(each.value, "policy_id", null)
  source_policy_documents   = lookup(each.value, "source_policy_documents", null)
  policy_version            = lookup(each.value, "policy_version", null)
  statement = [
    for statement in each.value.statement : merge(
      statement,
      {
        principals = [
          for principal in statement.principals : {
            identifiers = setunion(principal.identifiers, [for saml_provider in principal.saml_provider_custom_names : module.saml_provider[saml_provider].arn])
            type        = principal.type
          }
        ]
        not_principals = [
          for principal in statement.not_principals : {
            identifiers = setunion(principal.identifiers, [for saml_provider in principal.saml_provider_custom_names : module.saml_provider[saml_provider].arn])
            type        = principal.type
          }
        ]
      }
    )
  ]
}

module "role_policy" {
  source = "../resources/role_policy"

  for_each = var.role_policies

  name        = lookup(each.value, "name", null)
  name_prefix = lookup(each.value, "name_prefix", null)
  policy      = try(each.value.policy, null) != null ? each.value.policy : module.policy_document[each.value.policy_document_custom_name].json
  role        = try(each.value.role, null) != null ? each.value.role : module.role[0].name
}

module "role_policy_attachment" {
  source = "../resources/role_policy_attachment"

  for_each = { for index, policy in var.role_policy_attachments : try(policy.custom_name, null) != null ? policy.custom_name : tostring(index) => policy }

  role       = try(each.value.role, null) != null ? each.value.role : module.role[0].name
  policy_arn = try(each.value.policy_arn, null) != null ? each.value.policy_arn : module.policy[each.value.policy_custom_name].arn
}

module "role_policies_exclusive" {
  source = "../resources/role_policies_exclusive"

  count = var.role_policies_exclusive != null ? 1 : 0

  role_name    = try(var.role_policies_exclusive.role_name, null) != null ? var.role_policies_exclusive.role_name : module.role[0].name
  policy_names = setunion(var.role_policies_exclusive.policy_names, [for policy in var.role_policies_exclusive.policy_custom_names : module.role_policy[policy].name])

  depends_on = [module.role_policy]
}

module "instance_profile" {
  source = "../resources/instance_profile"

  count = var.instance_profile != null ? 1 : 0

  name        = lookup(var.instance_profile, "name", null)
  name_prefix = lookup(var.instance_profile, "name_prefix", null)
  path        = lookup(var.instance_profile, "path", null)
  role        = try(var.instance_profile.role, null) != null ? var.instance_profile.role : module.role[0].name

  tags = lookup(var.instance_profile, "tags", null)
}

module "policy_attachments_exclusive" {
  source = "../resources/policy_attachments_exclusive"

  count = var.policy_attachments_exclusive != null ? 1 : 0

  role_name   = try(var.policy_attachments_exclusive.role_name, null) != null ? var.policy_attachments_exclusive.role_name : module.role[0].name
  policy_arns = setunion(var.policy_attachments_exclusive.policy_arns, [for policy in var.policy_attachments_exclusive.policy_custom_names : module.policy[policy].arn])

  depends_on = [module.role_policy_attachment]
}

module "policy" {
  source = "../resources/policy"

  for_each = var.policies

  delay_after_policy_creation_in_ms = lookup(each.value, "delay_after_policy_creation_in_ms", null)
  description                       = lookup(each.value, "description")
  name                              = lookup(each.value, "name")
  name_prefix                       = lookup(each.value, "name_prefix")
  path                              = lookup(each.value, "path")
  policy                            = try(each.value.policy, null) != null ? each.value.policy : module.policy_document[each.value.policy_custom_name].json

  tags = lookup(each.value, "tags")
}

module "user" {
  source = "../resources/user"

  for_each = var.users

  name                 = each.value.name
  path                 = lookup(each.value, "path", null)
  permissions_boundary = try(each.value.permissions_boundary, null) != null ? each.value.permissions_boundary : try(each.value.permissions_boundary_custom_name, null) != null ? module.policy[each.value.permissions_boundary_custom_name].arn : null
  force_destroy        = lookup(each.value, "force_destroy", null)

  tags = lookup(each.value, "tags", null)
}

module "user_login_profile" {
  source = "../resources/user_login_profile"

  for_each = var.user_login_profiles

  user                    = try(each.value.user, null) != null ? each.value.user : module.user[each.value.user_custom_name].name
  pgp_key                 = lookup(each.value, "pgp_key", null)
  password_length         = lookup(each.value, "password_length", null)
  password_reset_required = lookup(each.value, "password_reset_required", null)

  depends_on = [module.account_password_policy]
}

module "access_key" {
  source = "../resources/access_key"

  for_each = var.access_keys

  user    = try(each.value.user, null) != null ? each.value.user : module.user[each.value.user_custom_name].name
  pgp_key = lookup(each.value, "pgp_key", null)
  status  = lookup(each.value, "status", null)
}

module "user_ssh_key" {
  source = "../resources/user_ssh_key"

  for_each = var.user_ssh_keys

  username   = try(each.value.username, null) != null ? each.value.username : module.user[each.value.user_custom_name].name
  encoding   = each.value.encoding
  public_key = each.value.public_key
  status     = lookup(each.value, "status", null)
}

module "group" {
  source = "../resources/group"

  for_each = var.groups

  name = each.value.name
  path = lookup(each.value, "path", null)
}

module "user_policy" {
  source = "../resources/user_policy"

  for_each = var.user_policies

  name        = lookup(each.value, "name", null)
  name_prefix = lookup(each.value, "name_prefix", null)
  policy      = try(each.value.policy, null) != null ? each.value.policy : module.policy_document[each.value.policy_document_custom_name].json
  user        = try(each.value.user, null) != null ? each.value.user : module.user[each.value.user_custom_name].name
}

module "user_policy_attachment" {
  source = "../resources/user_policy_attachment"

  for_each = var.user_policy_attachments

  user       = try(each.value.user, null) != null ? each.value.user : module.user[each.value.user_custom_name].name
  policy_arn = try(each.value.policy_arn, null) != null ? each.value.policy_arn : module.policy[each.value.policy_custom_name].arn
}

module "user_policies_exclusive" {
  source = "../resources/user_policies_exclusive"

  for_each = var.user_policies_exclusive

  user_name    = try(each.value.user_name, null) != null ? each.value.user_name : module.user[each.value.user_custom_name].name
  policy_names = setunion(each.value.policy_names, [for policy in each.value.policy_custom_names : module.user_policy[policy].name])

  depends_on = [module.user_policy]
}

module "user_policy_attachments_exclusive" {
  source = "../resources/user_policy_attachments_exclusive"

  for_each = var.user_policy_attachments_exclusive

  user_name   = try(each.value.user_name, null) != null ? each.value.user_name : module.user[each.value.user_custom_name].name
  policy_arns = setunion(each.value.policy_arns, [for policy in each.value.policy_custom_names : module.policy[policy].arn])

  depends_on = [module.user_policy_attachment]
}

module "group_policy" {
  source = "../resources/group_policy"

  for_each = var.group_policies

  name        = lookup(each.value, "name", null)
  name_prefix = lookup(each.value, "name_prefix", null)
  policy      = try(each.value.policy, null) != null ? each.value.policy : module.policy_document[each.value.policy_document_custom_name].json
  group       = try(each.value.group, null) != null ? each.value.group : module.group[each.value.group_custom_name].name
}

module "group_policy_attachment" {
  source = "../resources/group_policy_attachment"

  for_each = var.group_policy_attachments

  group      = try(each.value.group, null) != null ? each.value.group : module.group[each.value.group_custom_name].name
  policy_arn = try(each.value.policy_arn, null) != null ? each.value.policy_arn : module.policy[each.value.policy_custom_name].arn
}

module "group_policies_exclusive" {
  source = "../resources/group_policies_exclusive"

  for_each = var.group_policies_exclusive

  group_name   = try(each.value.group_name, null) != null ? each.value.group_name : module.group[each.value.group_custom_name].name
  policy_names = setunion(each.value.policy_names, [for policy in each.value.policy_custom_names : module.group_policy[policy].name])

  depends_on = [module.group_policy]
}

module "group_policy_attachments_exclusive" {
  source = "../resources/group_policy_attachments_exclusive"

  for_each = var.group_policy_attachments_exclusive

  group_name  = try(each.value.group_name, null) != null ? each.value.group_name : module.group[each.value.group_custom_name].name
  policy_arns = setunion(each.value.policy_arns, [for policy in each.value.policy_custom_names : module.policy[policy].arn])

  depends_on = [module.group_policy_attachment]
}

module "group_membership" {
  source = "../resources/group_membership"

  for_each = var.group_memberships

  name  = each.value.name
  users = setunion(each.value.users, [for user in each.value.user_custom_names : module.user[user].name])
  group = try(each.value.group, null) != null ? each.value.group : module.group[each.value.group_custom_name].name
}

module "user_group_membership" {
  source = "../resources/user_group_membership"

  for_each = var.user_group_memberships

  user   = each.value.user
  groups = each.value.groups

  depends_on = [module.user, module.group]
}

module "openid_connect_provider" {
  source = "../resources/openid_connect_provider"

  for_each = var.openid_connect_providers

  url             = each.value.url
  client_id_list  = each.value.client_id_list
  thumbprint_list = lookup(each.value, "thumbprint_list", null)

  tags = lookup(each.value, "tags", null)
}

module "saml_provider" {
  source = "../resources/saml_provider"

  for_each = var.saml_providers

  name                   = each.value.name
  saml_metadata_document = each.value.saml_metadata_document

  tags = lookup(each.value, "tags", null)
}

module "service_linked_role" {
  source = "../resources/service_linked_role"

  for_each = var.service_linked_roles

  aws_service_name = each.value.aws_service_name
  custom_suffix    = lookup(each.value, "custom_suffix", null)
  description      = lookup(each.value, "description", null)

  tags = lookup(each.value, "tags", null)
}
