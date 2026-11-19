variable "role_name" {
  type        = string
  description = "(Required) IAM role name."
}

variable "policy_arns" {
  type        = set(string)
  description = "(Required) A set of managed IAM policy ARNs to be attached to the role. Policies attached to this role but not configured in this argument will be removed."
}
