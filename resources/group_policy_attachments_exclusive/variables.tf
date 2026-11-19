variable "group_name" {
  type        = string
  description = "(Required) IAM group name."
}

variable "policy_arns" {
  type        = set(string)
  description = "(Required) A set of managed IAM policy ARNs to be attached to the group. Policies attached to this group but not configured in this argument will be removed."
}
