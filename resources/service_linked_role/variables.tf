variable "aws_service_name" {
  type        = string
  description = "(Required, Forces new resource) The AWS service to which this role is attached, specified as a full service hostname."
}

variable "custom_suffix" {
  type        = string
  default     = null
  description = "(Optional, Forces new resource) Additional string appended to the role name. Not all AWS services support custom suffixes."
}

variable "description" {
  type        = string
  default     = null
  description = "(Optional) Description of the role."
}

variable "tags" {
  type        = map(string)
  default     = null
  description = "(Optional) A map of tags assigned to all modules."
}
