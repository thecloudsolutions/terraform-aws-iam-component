output "arn" {
  value       = aws_iam_saml_provider.this.arn
  description = "The ARN assigned by AWS for this provider."
}

output "saml_provider_uuid" {
  value       = aws_iam_saml_provider.this.saml_provider_uuid
  description = "Unique identifier assigned to the SAML provider."
}

output "tags_all" {
  value       = aws_iam_saml_provider.this.tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}

output "valid_until" {
  value       = aws_iam_saml_provider.this.valid_until
  description = "The expiration date and time for the SAML provider in RFC3339 format."
}
