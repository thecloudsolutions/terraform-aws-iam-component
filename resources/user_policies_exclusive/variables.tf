variable "user_name" {
  type        = string
  description = "(Required) IAM user name."
}

variable "policy_names" {
  type        = set(string)
  description = "(Required) A set of inline policy names assigned to the user. Inline policies attached to this user but not configured in this argument will be removed."
}
