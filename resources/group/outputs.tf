output "arn" {
  value       = aws_iam_group.this.arn
  description = "The ARN assigned by AWS for this group."
}

output "id" {
  value       = aws_iam_group.this.id
  description = "The group's name."
}

output "name" {
  value       = aws_iam_group.this.name
  description = "The group's name."
}

output "path" {
  value       = aws_iam_group.this.path
  description = "The path of the group in IAM."
}

output "unique_id" {
  value       = aws_iam_group.this.unique_id
  description = "The unique ID assigned by AWS."
}
