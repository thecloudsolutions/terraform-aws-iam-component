variable "url" {
  type        = string
  description = "(Required) The URL of the identity provider. Corresponds to the iss claim."
}

variable "client_id_list" {
  type        = set(string)
  description = "(Required) A set of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the client_id parameter on OAuth requests.)"
}

variable "thumbprint_list" {
  type        = list(string)
  default     = null
  description = "(Optional) A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s)."
}

variable "tags" {
  type        = map(string)
  default     = null
  description = "(Optional) Map of resource tags for the IAM OIDC provider. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
}
