variable "account_alias" {
  type = object({
    account_alias = string
  })

  default = null
}

variable "account_password_policy" {
  type = object({
    allow_users_to_change_password = optional(bool)
    hard_expiry                    = optional(bool)
    max_password_age               = optional(number)
    minimum_password_length        = optional(number)
    password_reuse_prevention      = optional(number)
    require_lowercase_characters   = optional(bool)
    require_numbers                = optional(bool)
    require_symbols                = optional(bool)
    require_uppercase_characters   = optional(bool)
  })

  default = null
}

variable "role" {
  type = object({
    assume_role_policy                      = optional(string)
    assume_role_policy_document_custom_name = optional(string)
    description                             = optional(string)
    force_detach_policies                   = optional(bool)
    inline_policy = optional(set(object({
      name   = string
      policy = string
    })), [])

    managed_policy_arns              = optional(set(string))
    max_session_duration             = optional(number)
    name                             = optional(string)
    name_prefix                      = optional(string)
    path                             = optional(string)
    permissions_boundary             = optional(string)
    permissions_boundary_custom_name = optional(string)

    tags = optional(map(string))
  })

  default = null
}

variable "policy_documents" {
  type = map(object({
    override_policy_documents = optional(list(string))
    policy_id                 = optional(string)
    source_policy_documents   = optional(list(string))
    policy_version            = optional(string)

    statement = optional(list(object({
      actions       = optional(set(string))
      effect        = optional(string)
      not_actions   = optional(set(string))
      not_resources = optional(set(string))
      resources     = optional(set(string))
      sid           = optional(string)

      condition = optional(set(object({
        test     = string
        variable = string
        values   = list(any)
      })), [])

      principals = optional(set(object({
        identifiers                = set(string)
        saml_provider_custom_names = optional(set(string), [])
        type                       = string
      })), [])

      not_principals = optional(set(object({
        identifiers                = set(string)
        saml_provider_custom_names = optional(set(string), [])
        type                       = string
      })), [])
    })), [])
  }))

  default = {}
}

variable "role_policies" {
  type = map(object({
    name                        = optional(string)
    name_prefix                 = optional(string)
    policy                      = optional(string)
    policy_document_custom_name = optional(string)
    role                        = optional(string)
  }))

  default = {}
}

variable "role_policy_attachments" {
  type = list(object({
    custom_name        = optional(string)
    policy_arn         = optional(string)
    policy_custom_name = optional(string)
    role               = optional(string)
  }))

  default = []
}

variable "role_policies_exclusive" {
  type = object({
    role_name           = optional(string)
    policy_names        = set(string)
    policy_custom_names = optional(set(string), [])
  })

  default = null
}

variable "instance_profile" {
  type = object({
    name        = optional(string)
    name_prefix = optional(string)
    path        = optional(string)
    role        = optional(string)
    tags        = optional(map(string))
  })

  default = null
}

variable "policy_attachments_exclusive" {
  type = object({
    policy_arns         = set(string)
    policy_custom_names = optional(set(string), [])
    role_name           = optional(string)
  })

  default = null
}

variable "policies" {
  type = map(object({
    policy                            = optional(string)
    policy_custom_name                = optional(string)
    delay_after_policy_creation_in_ms = optional(number)
    description                       = optional(string)
    name                              = optional(string)
    name_prefix                       = optional(string)
    path                              = optional(string)
    tags                              = optional(map(string))
  }))

  default = {}
}

variable "users" {
  type = map(object({
    name                             = string
    path                             = optional(string)
    permissions_boundary             = optional(string)
    permissions_boundary_custom_name = optional(string)
    force_destroy                    = optional(bool)
    tags                             = optional(map(string))
  }))

  default = {}
}

variable "user_login_profiles" {
  type = map(object({
    user                    = optional(string)
    user_custom_name        = optional(string)
    pgp_key                 = optional(string)
    password_length         = optional(number)
    password_reset_required = optional(bool)
  }))

  default = {}
}

variable "access_keys" {
  type = map(object({
    user             = optional(string)
    user_custom_name = optional(string)
    pgp_key          = optional(string)
    status           = optional(string)
  }))

  default = {}
}

variable "user_ssh_keys" {
  type = map(object({
    username         = optional(string)
    user_custom_name = optional(string)
    encoding         = string
    public_key       = string
    status           = optional(string)
  }))

  default = {}
}

variable "groups" {
  type = map(object({
    name = string
    path = optional(string)
  }))

  default = {}
}

variable "user_policies" {
  type = map(object({
    name                        = optional(string)
    name_prefix                 = optional(string)
    policy                      = optional(string)
    policy_document_custom_name = optional(string)
    user                        = optional(string)
    user_custom_name            = optional(string)
  }))

  default = {}
}

variable "user_policy_attachments" {
  type = map(object({
    user               = optional(string)
    user_custom_name   = optional(string)
    policy_arn         = optional(string)
    policy_custom_name = optional(string)
  }))

  default = {}
}

variable "user_policies_exclusive" {
  type = map(object({
    user_name           = optional(string)
    user_custom_name    = optional(string)
    policy_names        = set(string)
    policy_custom_names = optional(set(string), [])
  }))

  default = {}
}

variable "user_policy_attachments_exclusive" {
  type = map(object({
    user_name           = optional(string)
    user_custom_name    = optional(string)
    policy_arns         = set(string)
    policy_custom_names = optional(set(string), [])
  }))

  default = {}
}

variable "group_policies" {
  type = map(object({
    name                        = optional(string)
    name_prefix                 = optional(string)
    policy                      = optional(string)
    policy_document_custom_name = optional(string)
    group                       = optional(string)
    group_custom_name           = optional(string)
  }))

  default = {}
}

variable "group_policy_attachments" {
  type = map(object({
    group              = optional(string)
    group_custom_name  = optional(string)
    policy_arn         = optional(string)
    policy_custom_name = optional(string)
  }))

  default = {}
}

variable "group_policies_exclusive" {
  type = map(object({
    group_name          = optional(string)
    group_custom_name   = optional(string)
    policy_names        = set(string)
    policy_custom_names = optional(set(string), [])
  }))

  default = {}
}

variable "group_policy_attachments_exclusive" {
  type = map(object({
    group_name          = optional(string)
    group_custom_name   = optional(string)
    policy_arns         = set(string)
    policy_custom_names = optional(set(string), [])
  }))

  default = {}
}

variable "group_memberships" {
  type = map(object({
    name              = string
    users             = set(string)
    user_custom_names = optional(set(string), [])
    group             = optional(string)
    group_custom_name = optional(string)
  }))

  default = {}
}

variable "user_group_memberships" {
  type = map(object({
    user   = string
    groups = set(string)
  }))

  default = {}
}

variable "openid_connect_providers" {
  type = map(object({
    url             = string
    client_id_list  = set(string)
    thumbprint_list = optional(list(string))
    tags            = optional(map(string))
  }))

  default = {}
}

variable "saml_providers" {
  type = map(object({
    name                   = string
    saml_metadata_document = string
    tags                   = optional(map(string))
  }))

  default = {}
}

variable "service_linked_roles" {
  type = map(object({
    aws_service_name = string
    custom_suffix    = optional(string)
    description      = optional(string)
    tags             = optional(map(string))
  }))

  default = {}
}
