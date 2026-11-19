variable "override_policy_documents" {
  type        = list(string)
  default     = null
  description = "(Optional) List of IAM policy documents that are merged together into the exported document. In merging, statements with non-blank sids will override statements with the same sid from earlier documents in the list. Statements with non-blank sids will also override statements with the same sid from source_policy_documents. Non-overriding statements will be added to the exported document."
}

variable "policy_id" {
  type        = string
  default     = null
  description = "(Optional) ID for the policy document."
}

variable "source_policy_documents" {
  type        = list(string)
  default     = null
  description = "(Optional) List of IAM policy documents that are merged together into the exported document. Statements defined in source_policy_documents must have unique sids. Statements with the same sid from override_policy_documents will override source statements."
}

variable "policy_version" {
  type        = string
  default     = "2012-10-17"
  description = "(Optional) IAM policy document version. Valid values are 2008-10-17 and 2012-10-17. Defaults to 2012-10-17."
}

variable "statement" {
  description = "(Optional) Configuration block for a policy statement."
  default     = []
  type = list(object({
    actions = optional(set(string))
    # (Optional) Set of actions that this statement either allows or denies. For example, ["ec2:RunInstances", "s3:*"].
    effect = optional(string)
    # (Optional) Whether this statement allows or denies the given actions. Valid values are Allow and Deny. Defaults to Allow.
    not_actions = optional(set(string))
    # (Optional) Set of actions that this statement does not apply to. Use to apply a policy statement to all actions except those listed.
    not_resources = optional(set(string))
    # (Optional) Set of resource ARNs that this statement does not apply to. Use to apply a policy statement to all resources except those listed. Conflicts with resources.
    resources = optional(set(string))
    # (Optional) Set of resource ARNs that this statement applies to. This is required by AWS if used for an IAM policy. Conflicts with not_resources.
    sid = optional(string)
    # (Optional) Sid (statement ID) is an identifier for a policy statement.

    condition = optional(set(object({
      # (Optional) A condition constrains whether a statement applies in a particular situation. Conditions can be specific to an AWS service. When using multiple condition blocks, they must all evaluate to true for the policy statement to apply. In other words, AWS evaluates the conditions as though with an "AND" boolean operation.
      test = string
      # (Required) Name of the IAM condition operator to evaluate.
      variable = string
      # (Required) Name of a Context Variable to apply the condition to. Context variables may either be standard AWS variables starting with aws: or service-specific variables prefixed with the service name.
      values = list(any)
      # (Required) Values to evaluate the condition against. If multiple values are provided, the condition matches if at least one of them applies. That is, AWS evaluates multiple values as though using an "OR" boolean operation.
    })), [])

    principals = optional(set(object({
      # (Optional) The principals and not_principals arguments define to whom a statement applies or does not apply, respectively.
      identifiers = set(string)
      # (Required) Set of identifiers for principals. When type is AWS, these are IAM principal ARNs, e.g., arn:aws:iam::12345678901:role/yak-role. When type is Service, these are AWS Service roles, e.g., lambda.amazonaws.com. When type is Federated, these are web identity users or SAML provider ARNs, e.g., accounts.google.com or arn:aws:iam::12345678901:saml-provider/yak-saml-provider. When type is CanonicalUser, these are canonical user IDs, e.g., 79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be.
      type = string
      # (Required) Type of principal. Valid values include AWS, Service, Federated, CanonicalUser and *. To have Terraform render JSON containing "Principal": "*", use type = "*" and identifiers = ["*"]. To have Terraform render JSON containing "Principal": {"AWS": "*"}, use type = "AWS" and identifiers = ["*"].
    })), [])

    not_principals = optional(set(object({
      # (Optional) The principals and not_principals arguments define to whom a statement applies or does not apply, respectively.
      identifiers = set(string)
      # (Required) Set of identifiers for principals. When type is AWS, these are IAM principal ARNs, e.g., arn:aws:iam::12345678901:role/yak-role. When type is Service, these are AWS Service roles, e.g., lambda.amazonaws.com. When type is Federated, these are web identity users or SAML provider ARNs, e.g., accounts.google.com or arn:aws:iam::12345678901:saml-provider/yak-saml-provider. When type is CanonicalUser, these are canonical user IDs, e.g., 79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be.
      type = string
      # (Required) Type of principal. Valid values include AWS, Service, Federated, CanonicalUser and *. To have Terraform render JSON containing "Principal": "*", use type = "*" and identifiers = ["*"]. To have Terraform render JSON containing "Principal": {"AWS": "*"}, use type = "AWS" and identifiers = ["*"].
    })), [])
  }))
}
