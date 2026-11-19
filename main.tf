module "iam" {
  source = "./module"

  for_each = var.iam_map

  account_alias                      = lookup(each.value, "account_alias", null)
  account_password_policy            = lookup(each.value, "account_password_policy", null)
  role                               = lookup(each.value, "role", null)
  policy_documents                   = lookup(each.value, "policy_documents", null)
  role_policies                      = lookup(each.value, "role_policies", null)
  role_policy_attachments            = lookup(each.value, "role_policy_attachments", null)
  role_policies_exclusive            = lookup(each.value, "role_policies_exclusive", null)
  instance_profile                   = lookup(each.value, "instance_profile", null)
  policy_attachments_exclusive       = lookup(each.value, "policy_attachments_exclusive", null)
  policies                           = lookup(each.value, "policies", null)
  users                              = lookup(each.value, "users", null)
  user_login_profiles                = lookup(each.value, "user_login_profiles", null)
  access_keys                        = lookup(each.value, "access_keys", null)
  user_ssh_keys                      = lookup(each.value, "user_ssh_keys", null)
  groups                             = lookup(each.value, "groups", null)
  user_policies                      = lookup(each.value, "user_policies", null)
  user_policy_attachments            = lookup(each.value, "user_policy_attachments", null)
  user_policies_exclusive            = lookup(each.value, "user_policies_exclusive", null)
  user_policy_attachments_exclusive  = lookup(each.value, "user_policy_attachments_exclusive", null)
  group_policies                     = lookup(each.value, "group_policies", null)
  group_policy_attachments           = lookup(each.value, "group_policy_attachments", null)
  group_policies_exclusive           = lookup(each.value, "group_policies_exclusive", null)
  group_policy_attachments_exclusive = lookup(each.value, "group_policy_attachments_exclusive", null)
  group_memberships                  = lookup(each.value, "group_memberships", null)
  user_group_memberships             = lookup(each.value, "user_group_memberships", null)
  openid_connect_providers           = lookup(each.value, "openid_connect_providers", null)
  saml_providers                     = lookup(each.value, "saml_providers", null)
  service_linked_roles               = lookup(each.value, "service_linked_roles", null)
}
