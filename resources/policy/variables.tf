variable "delay_after_policy_creation_in_ms" {
  type        = number
  default     = null
  description = "(Optional) Number of milliseconds to wait between creating the policy and setting its version as default. May be required in environments with very high S3 IO loads."
}

variable "description" {
  type        = string
  default     = null
  description = "(Optional, Forces new resource) Description of the IAM policy."
}

variable "name" {
  type        = string
  default     = null
  description = "(Optional, Forces new resource) Name of the policy. If omitted, Terraform will assign a random, unique name."
}

variable "name_prefix" {
  type        = string
  default     = null
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
}

variable "path" {
  type        = string
  default     = null
  description = "(Optional, default \" / \") Path in which to create the policy."
}

variable "policy" {
  type        = string
  description = "(Required) Policy document. This is a JSON formatted string."
}

variable "tags" {
  type        = map(string)
  default     = null
  description = "(Optional) Map of resource tags for the IAM Policy. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
}
