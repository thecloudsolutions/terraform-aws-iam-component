variable "user" {
  type        = string
  description = "(Required) The name of the IAM User to add to groups"
}

variable "groups" {
  type        = set(string)
  description = "(Required) A set of IAM Groups to add the user to."
}
