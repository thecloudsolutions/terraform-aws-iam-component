variable "username" {
  type        = string
  description = "(Required, Forces new resource) The IAM user to associate the SSH public key with."
}

variable "encoding" {
  type        = string
  description = "(Required, Forces new resource) Public key encoding format. Valid values are SSH and PEM."
}

variable "public_key" {
  type        = string
  description = "(Required, Forces new resource) The SSH public key, encoded in ssh-rsa or PEM format."
}

variable "status" {
  type        = string
  default     = null
  description = "(Optional) The status of the SSH public key. Valid values are Active and Inactive."
}
