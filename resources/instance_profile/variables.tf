variable "name" {
  type        = string
  default     = null
  description = "(Optional, Forces new resource) Name of the instance profile. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix. Can be a string of characters consisting of upper and lowercase alphanumeric characters and these special characters: _, +, =, ,, ., @, -. Spaces are not allowed. The name must be unique, regardless of the path or role. In other words, if there are different role or path values but the same name as an existing instance profile, it will still cause an EntityAlreadyExists error."
}

variable "name_prefix" {
  type        = string
  default     = null
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
}

variable "path" {
  type        = string
  default     = null
  description = "(Optional, default \" / \") Path to the instance profile. Can be a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. Can include any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercase letters."
}

variable "role" {
  type        = string
  default     = null
  description = "(Optional) Name of the role to add to the profile."
}

variable "tags" {
  type        = map(string)
  default     = null
  description = "(Optional) Map of resource tags for the IAM Instance Profile. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
}
