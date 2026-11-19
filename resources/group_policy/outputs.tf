output "id" {
  value       = aws_iam_group_policy.this.id
  description = "The group policy ID, in the form of group_name:group_policy_name."
}

output "name" {
  value       = aws_iam_group_policy.this.name
  description = "The name of the policy."
}

output "policy" {
  value       = aws_iam_group_policy.this.policy
  description = "The policy document attached to the group."
}

output "group" {
  value       = aws_iam_group_policy.this.group
  description = "The name of the group associated with the policy."
}
