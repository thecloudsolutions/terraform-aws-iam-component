output "id" {
  value       = aws_iam_user_login_profile.this.id
  description = "The IAM user's name."
}

output "password" {
  value       = aws_iam_user_login_profile.this.password
  description = "The generated password, available when pgp_key is not provided."
  sensitive   = true
}

output "key_fingerprint" {
  value       = aws_iam_user_login_profile.this.key_fingerprint
  description = "The fingerprint of the PGP key used to encrypt the password."
}

output "encrypted_password" {
  value       = aws_iam_user_login_profile.this.encrypted_password
  description = "The encrypted password, base64 encoded."
}
