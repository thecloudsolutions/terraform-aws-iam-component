variable "name" {
  type        = string
  description = "(Required, Forces new resource) The name to identify the group membership."
}

variable "users" {
  type        = set(string)
  description = "(Required) A set of IAM user names to associate with the group."
}

variable "group" {
  type        = string
  description = "(Required, Forces new resource) The IAM group name to attach the users to."
}
