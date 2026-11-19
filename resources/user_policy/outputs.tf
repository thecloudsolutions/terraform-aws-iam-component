output "id" {
  value       = aws_iam_user_policy.this.id
  description = "The user policy ID, in the form of user_name:user_policy_name."
}

output "name" {
  value       = aws_iam_user_policy.this.name
  description = "The name of the policy."
}

output "policy" {
  value       = aws_iam_user_policy.this.policy
  description = "The policy document attached to the user."
}

output "user" {
  value       = aws_iam_user_policy.this.user
  description = "The name of the user associated with the policy."
}
