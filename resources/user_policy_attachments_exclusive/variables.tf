variable "user_name" {
  type        = string
  description = "(Required) IAM user name."
}

variable "policy_arns" {
  type        = set(string)
  description = "(Required) A set of managed IAM policy ARNs to be attached to the user. Policies attached to this user but not configured in this argument will be removed."
}
