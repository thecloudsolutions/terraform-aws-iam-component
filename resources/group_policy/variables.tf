variable "name" {
  type        = string
  default     = null
  description = "(Optional, Forces new resource) The name of the group policy. If omitted, Terraform will assign a random, unique name."
}

variable "name_prefix" {
  type        = string
  default     = null
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
}

variable "policy" {
  type        = string
  description = "(Required) The inline policy document. This is a JSON formatted string."
}

variable "group" {
  type        = string
  description = "(Required, Forces new resource) The name of the IAM group to attach to the policy."
}
