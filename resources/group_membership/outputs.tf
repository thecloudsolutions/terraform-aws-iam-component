output "name" {
  value       = aws_iam_group_membership.this.name
  description = "The name identifying the group membership."
}

output "users" {
  value       = aws_iam_group_membership.this.users
  description = "The IAM user names associated with the group."
}

output "group" {
  value       = aws_iam_group_membership.this.group
  description = "The IAM group name associated with the membership."
}
