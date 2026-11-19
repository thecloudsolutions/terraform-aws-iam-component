variable "name" {
  type        = string
  description = "(Required) The user's name. The name must consist of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-_.. User names are not distinguished by case. For example, you cannot create users named both \"TESTUSER\" and \"testuser\"."
}

variable "path" {
  type        = string
  default     = null
  description = "(Optional, default \"/\") Path in which to create the user."
}

variable "permissions_boundary" {
  type        = string
  default     = null
  description = "(Optional) The ARN of the policy that is used to set the permissions boundary for the user."
}

variable "force_destroy" {
  type        = bool
  default     = null
  description = "(Optional, default false) When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed."
}

variable "tags" {
  type        = map(string)
  default     = null
  description = "Key-value map of tags for the IAM user. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
}
