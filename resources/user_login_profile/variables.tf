variable "user" {
  type        = string
  description = "(Required, Forces new resource) The IAM user's name."
}

variable "pgp_key" {
  type        = string
  default     = null
  description = "(Optional, Forces new resource) A base-64 encoded PGP public key or a Keybase username in the form keybase:username used to encrypt the generated password."
}

variable "password_length" {
  type        = number
  default     = null
  description = "(Optional, Forces new resource) The length of the password generated on resource creation. Defaults to 20."
}

variable "password_reset_required" {
  type        = bool
  default     = null
  description = "(Optional, Forces new resource) Whether the user must reset the password generated on resource creation."
}
