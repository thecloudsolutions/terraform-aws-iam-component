output "id" {
  value       = aws_iam_access_key.this.id
  description = "The access key ID."
}

output "create_date" {
  value       = aws_iam_access_key.this.create_date
  description = "Date and time in RFC3339 format that the access key was created."
}

output "encrypted_secret" {
  value       = aws_iam_access_key.this.encrypted_secret
  description = "The encrypted secret access key, base64 encoded."
}

output "encrypted_ses_smtp_password_v4" {
  value       = aws_iam_access_key.this.encrypted_ses_smtp_password_v4
  description = "The encrypted SES SMTP password, base64 encoded."
}

output "key_fingerprint" {
  value       = aws_iam_access_key.this.key_fingerprint
  description = "The fingerprint of the PGP key used to encrypt the secret."
}

output "secret" {
  value       = aws_iam_access_key.this.secret
  description = "The secret access key, available when pgp_key is not provided."
  sensitive   = true
}

output "ses_smtp_password_v4" {
  value       = aws_iam_access_key.this.ses_smtp_password_v4
  description = "The secret access key converted into an SES SMTP password for the provider region."
  sensitive   = true
}

output "status" {
  value       = aws_iam_access_key.this.status
  description = "The status of the access key."
}
