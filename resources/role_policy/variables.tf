variable "name" {
  type        = string
  default     = null
  description = "(Optional) The name of the role policy. If omitted, Terraform will assign a random, unique name."
}

variable "name_prefix" {
  type        = string
  default     = null
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
}

variable "policy" {
  type        = string
  description = "(Required) The inline policy document. This is a JSON formatted string."
}

variable "role" {
  type        = string
  description = "(Required) The name of the IAM role to attach to the policy."
}
