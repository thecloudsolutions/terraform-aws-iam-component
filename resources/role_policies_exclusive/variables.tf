variable "role_name" {
  type        = string
  description = "(Required) IAM role name."
}

variable "policy_names" {
  type        = set(string)
  description = "(Required) A set of inline policy names assigned to the role. Inline policies attached to this role but not configured in this argument will be removed."
}
