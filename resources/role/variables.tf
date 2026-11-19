variable "assume_role_policy" {
  type        = string
  description = "(Required) Policy that grants an entity permission to assume the role."
}

variable "description" {
  type        = string
  default     = null
  description = "(Optional) Description of the role."
}

variable "force_detach_policies" {
  type        = bool
  default     = false
  description = "(Optional) Whether to force detaching any policies the role has before destroying it."
}

variable "inline_policy" {
  description = "(Optional) Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Terraform will not manage any inline policies in this resource. Configuring one empty block (i.e., inline_policy {}) will cause Terraform to remove all inline policies added out of band on apply."
  default     = []
  type = set(object({
    name = string
    # (Required) Name of the role policy.
    policy = string
    # (Required) Policy document as a JSON formatted string. For more information about building IAM policy documents with Terraform
  }))
}

variable "managed_policy_arns" {
  type        = set(string)
  default     = null
  description = "(Optional) Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Terraform will ignore policy attachments to this resource. When configured, Terraform will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., managed_policy_arns = []) will cause Terraform to remove all managed policy attachments."
}

variable "max_session_duration" {
  type        = number
  default     = null
  description = "(Optional) Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours."
}

variable "name" {
  type        = string
  default     = null
  description = "(Optional, Forces new resource) Friendly name of the role. If omitted, Terraform will assign a random, unique name."
}

variable "name_prefix" {
  type        = string
  default     = null
  description = "(Optional, Forces new resource) Creates a unique friendly name beginning with the specified prefix. Conflicts with name."
}

variable "path" {
  type        = string
  default     = null
  description = "(Optional) Path to the role."
}

variable "permissions_boundary" {
  type        = string
  default     = null
  description = "(Optional) ARN of the policy that is used to set the permissions boundary for the role."
}

variable "tags" {
  type        = map(string)
  default     = null
  description = "(Optional) A map of tags assigned to all modules."
}
