variable "user" {
  type        = string
  description = "(Required, Forces new resource) IAM user to associate with this access key."
}

variable "pgp_key" {
  type        = string
  default     = null
  description = "(Optional, Forces new resource) A base-64 encoded PGP public key or a Keybase username in the form keybase:username used to encrypt the secret."
}

variable "status" {
  type        = string
  default     = null
  description = "(Optional) Access key status. Valid values are Active and Inactive. Defaults to Active."
}
