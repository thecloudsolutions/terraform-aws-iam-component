variable "allow_users_to_change_password" {
  type        = bool
  default     = null
  description = "(Optional) Whether to allow users to change their own password."
}

variable "hard_expiry" {
  type        = bool
  default     = null
  description = "(Optional) Whether users are prevented from setting a new password after their password has expired."
}

variable "max_password_age" {
  type        = number
  default     = null
  description = "(Optional) The number of days that a user password is valid."
}

variable "minimum_password_length" {
  type        = number
  default     = null
  description = "(Optional) Minimum length to require for user passwords."
}

variable "password_reuse_prevention" {
  type        = number
  default     = null
  description = "(Optional) The number of previous passwords that users are prevented from reusing."
}

variable "require_lowercase_characters" {
  type        = bool
  default     = null
  description = "(Optional) Whether to require lowercase characters for user passwords."
}

variable "require_numbers" {
  type        = bool
  default     = null
  description = "(Optional) Whether to require numbers for user passwords."
}

variable "require_symbols" {
  type        = bool
  default     = null
  description = "(Optional) Whether to require symbols for user passwords."
}

variable "require_uppercase_characters" {
  type        = bool
  default     = null
  description = "(Optional) Whether to require uppercase characters for user passwords."
}
