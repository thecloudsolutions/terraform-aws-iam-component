variable "group_name" {
  type        = string
  description = "(Required) IAM group name."
}

variable "policy_names" {
  type        = set(string)
  description = "(Required) A set of inline policy names assigned to the group. Inline policies attached to this group but not configured in this argument will be removed."
}
