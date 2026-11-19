output "arn" {
  value       = aws_iam_policy.this.arn
  description = "ARN assigned by AWS to this policy."
}

output "name" {
  value       = aws_iam_policy.this.name
  description = "ARN assigned by AWS to this policy."
}

output "attachment_count" {
  value       = aws_iam_policy.this.attachment_count
  description = "Number of entities (users, groups, and roles) that the policy is attached to."
}

output "id" {
  value       = aws_iam_policy.this.id
  description = "ARN assigned by AWS to this policy."
}

output "policy_id" {
  value       = aws_iam_policy.this.policy_id
  description = "Policy's ID."
}

output "tags_all" {
  value       = aws_iam_policy.this.tags_all
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
}
