output "id" {
  value       = aws_iam_role_policy.this.id
  description = "The role policy ID, in the form of role_name:role_policy_name."
}

output "name" {
  value       = aws_iam_role_policy.this.name
  description = "The name of the policy."
}

output "policy" {
  value       = aws_iam_role_policy.this.policy
  description = "The policy document attached to the role."
}

output "role" {
  value       = aws_iam_role_policy.this.role
  description = "The name of the role associated with the policy."
}